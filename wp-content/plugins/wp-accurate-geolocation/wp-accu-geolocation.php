<?php

/*
Plugin Name: WordPress Accurate Geolocation
Plugin URI: http://woo.report/product/wp-accu-geolocation
Description: Accurate Geolocation with HTML5, modern and advanced geographic location identification features!
Version: 1.0.0
Author: Lucian Capdefier (luciancapdefier)
Author URI: http://woo.report/about-us/#lucian.capdefier
Text Domain: wp-accu-geolocation
Domain Path: /languages
Copyright: © 2015-2015 WooReports.
License: GNU General Public License v3.0
License URI: http://www.gnu.org/licenses/gpl-3.0.html
*/

if ( !defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

add_action( 'wp_enqueue_scripts', 'agl_enqueue_script' );
add_action( 'wp_ajax_agl_request', 'agl_request_callback' );
add_action( 'wp_ajax_nopriv_agl_request', 'agl_request_callback' );
add_action( 'wp_ajax_agl_get_php', 'agl_get_php_callback' );
add_action( 'wp_ajax_nopriv_agl_get_php', 'agl_get_php_callback' );
add_action( 'wp_ajax_agl_ask', 'agl_ask_callback' );
add_action( 'wp_ajax_nopriv_agl_ask', 'agl_ask_callback' );
register_activation_hook( __FILE__, 'agl_on_activation' );
add_filter( 'init', 'agl_on_activation' );

if ( is_admin() ) {
	add_filter( 'admin_init', 'agl_on_activation' );
	add_action( 'admin_menu', 'agl_admin_submenu' );
	add_action( 'admin_init', 'agl_settings_init' );
	// add_action( 'admin_notices', 'agl_delete_data_notice' );
}

function agl_on_activation() {
	$option_name = 'agl_settings';
	$settings    = get_option( $option_name );
	
	$all_default_settings = array(
		'gcp_maximumAge' => 'Infinity',
		'gcp_enableHighAccuracy' => 'true',
		'gcp_timeout' => 6000,
		'php_date_format' => 'Y-m-d H:i:s',
		'is_ask_onload' => 'yes',
		'is_ask_onclick' => 'yes',
		'is_db_store' => 'yes',
		'is_db_user_store' => 'yes',
		'is_cookie_store' => 'yes',
		'cookie_life_hrs' => 24,
		'plugin_enabled' => 'yes',
	);

	if ( ! empty( $settings ) && array_diff_key( $settings,
			$all_default_settings ) !== array_diff_key( $all_default_settings, $settings )
	) {
		foreach ( $all_default_settings as $key => $value ) {
			if ( ! array_key_exists( $key, $settings ) ) {
				$settings[ $key ] = $value;
			}
		}
		update_option( $option_name, $settings );
	} else {
		add_option( $option_name, $all_default_settings );
	}
}

function agl_setcookie_permission() {
	$agl_params = get_option( 'agl_settings' );
	setcookie( 'agl-permission-asked-already', 'yes', time() + ( 3600 * $agl_params['cookie_life_hrs'] ), COOKIEPATH, COOKIE_DOMAIN );
}

function agl_setcookie_value( $data ) {
	$agl_params = get_option( 'agl_settings' );
	setcookie( 'agl-values', json_encode( $data ), time() + ( 3600 * $agl_params['cookie_life_hrs'] ), COOKIEPATH, COOKIE_DOMAIN );
}

function agl_enqueue_script() {
	wp_enqueue_script( 'geoPosition', plugins_url( 'assets/js/geoPosition.js', __FILE__ ), array(), false, true );
	wp_enqueue_script( 'aglGetPosition', plugins_url( 'assets/js/aglGetPosition.js', __FILE__ ), array( 'jquery' ), false, true );
	
	$agl_params = get_option( 'agl_settings' );
	$protocol = isset( $_SERVER['HTTPS'] ) ? 'https://' : 'http://';
	$params = array(
		'ajaxUrl' => admin_url( 'admin-ajax.php', $protocol ),
	);

	wp_localize_script( 'aglGetPosition', 'aglParams', $params );
}

function agl_request_callback() {
	$agl_params = get_option( 'agl_settings' );

	if ( $agl_params['plugin_enabled'] == 'no' ) {
		exit;
	}

	$response = array(
			'latitude' => isset($_POST['latitude']) ? $_POST['latitude'] : '',
			'longitude' => isset($_POST['longitude']) ? $_POST['longitude'] : '',
			'altitude' => isset($_POST['altitude']) ? $_POST['altitude'] : '',
			'accuracy' => isset($_POST['accuracy']) ? $_POST['accuracy'] : '',
			'altitudeAccuracy' => isset($_POST['altitudeAccuracy']) ? $_POST['altitudeAccuracy'] : '',
			'heading' => isset($_POST['heading']) ? $_POST['heading'] : '',
			'speed' => isset($_POST['speed']) ? $_POST['speed'] : '',
			'error_code' => isset($_POST['error_code']) ? $_POST['error_code'] : '',
			'error_message' => isset($_POST['error_message']) ? $_POST['error_message'] : '',
			'php_time' => time(),
			'php_date' => date( $agl_params['php_date_format'] ),
			'php_date_format' => $agl_params['php_date_format'],
			'user_id' => get_current_user_id(),
		);

	if ( $agl_params['is_cookie_store'] == 'yes' ) {
		agl_setcookie_value( $response );
	}

	if ( $agl_params['is_db_store'] == 'yes' ) {
		add_option( 'agl_data_' . uniqid() . '_' . md5( mt_rand() ), $response, '', 'no' );
	}
	
	if ( $agl_params['is_db_user_store'] == 'yes' && $response['user_id'] != 0 ) {
		update_user_meta( $response['user_id'], 'agl_data', $response );
	}

	agl_setcookie_permission();

	exit( json_encode( $response ) );
}

function agl_ask_callback() {
	$cookie = isset($_COOKIE['agl-values']) ? $_COOKIE['agl-values'] : '';
	$cookie = stripslashes($cookie);
	exit( $cookie );
}

function agl_delete_data() {
	global $wpdb;
	$count = $wpdb->query( "DELETE FROM $wpdb->options WHERE option_name LIKE 'agl_data_%_%' " );
	return $count;
}

function agl_get_php_callback() {
	$agl_params = get_option( 'agl_settings' );
	$protocol = isset( $_SERVER['HTTPS'] ) ? 'https://' : 'http://';
	$params = array(
		'is_ask_onload' => $agl_params['is_ask_onload'],
		'is_ask_onclick' => $agl_params['is_ask_onclick'],
		'gcp_maximumAge' => $agl_params['gcp_maximumAge'],
		'gcp_enableHighAccuracy' => $agl_params['gcp_enableHighAccuracy'],
		'gcp_timeout' => $agl_params['gcp_timeout'],
		'is_cookie_permission' => isset( $_COOKIE['agl-permission-asked-already'] ) ? $_COOKIE['agl-permission-asked-already'] : '',
	);

	exit( json_encode( $params ) );
}

function agl_delete_data_notice() {
	?>
	<div class="error">
	    <p><?php _e( 'Deleted all Accurate Geolocation data.', 'wp-accu-geolocation' ); ?></p>
	</div>
	<?php
}

function agl_admin_submenu() {
	add_options_page( 'Accurate Geolocation', 'Accurate Geolocation', 'manage_options', 'accurate_geolocation', 'agl_options_page' );
}


function agl_settings_init(  ) { 

	if ( isset( $_POST['agl-delete']) ) {
		$count = agl_delete_data();
	}

	register_setting( 'pluginPage', 'agl_settings' );

	add_settings_section(
		'agl_pluginPage_section', 
		__( 'General', 'wp-accu-geolocation' ), 
		'agl_settings_section_1_callback', 
		'pluginPage'
	);

	add_settings_field( 
		'plugin_enabled', 
		__( 'Enable geolocation (plugin)', 'wp-accu-geolocation' ), 
		'agl_radio_field_0_render', 
		'pluginPage', 
		'agl_pluginPage_section' 
	);

	add_settings_section(
		'agl_pluginPage_3_section', 
		__( 'Set geolocation collection methods', 'wp-accu-geolocation' ), 
		'', 
		'pluginPage'
	);

	add_settings_field( 
		'is_ask_onload', 
		__( 'Ask for geolocation on page load?', 'wp-accu-geolocation' ), 
		'agl_radio_field_5_render', 
		'pluginPage', 
		'agl_pluginPage_3_section' 
	);

	add_settings_field( 
		'cookie_life_hrs', 
		__( 'On load cookie lifetime (hours)', 'wp-accu-geolocation' ), 
		'agl_text_field_1_render', 
		'pluginPage', 
		'agl_pluginPage_3_section' 
	);

	add_settings_field( 
		'is_ask_onclick', 
		__( 'Ask for geolocation on button click?', 'wp-accu-geolocation' ), 
		'agl_radio_field_6_render', 
		'pluginPage', 
		'agl_pluginPage_3_section' 
	);

	add_settings_section(
		'agl_pluginPage_4_section', 
		__( 'Configure storage of geolocation data', 'wp-accu-geolocation' ), 
		'', 
		'pluginPage'
	);

	add_settings_field( 
		'is_db_store', 
		__( 'Store all geolocation in wp_options', 'wp-accu-geolocation' ), 
		'agl_radio_field_2_render', 
		'pluginPage', 
		'agl_pluginPage_4_section' 
	);

	add_settings_field( 
		'is_db_user_store', 
		__( 'Store latest user geolocation in wp_usermeta', 'wp-accu-geolocation' ), 
		'agl_radio_field_3_render', 
		'pluginPage', 
		'agl_pluginPage_4_section' 
	);

	add_settings_field( 
		'is_cookie_store', 
		__( 'Store visitor geolocation in browser cookie', 'wp-accu-geolocation' ), 
		'agl_radio_field_4_render', 
		'pluginPage', 
		'agl_pluginPage_4_section' 
	);

	add_settings_field( 
		'php_date_format', 
		__( 'Date format for date stored (PHP formats only)', 'wp-accu-geolocation' ), 
		'agl_text_field_9_render', 
		'pluginPage', 
		'agl_pluginPage_4_section' 
	);

	add_settings_section(
		'agl_pluginPage_2_section', 
		__( 'HTML Geolocation configuration', 'wp-accu-geolocation' ), 
		'agl_settings_section_2_callback', 
		'pluginPage'
	);

	add_settings_field( 
		'gcp_enableHighAccuracy', 
		__( 'High accuracy (geolocation option)', 'wp-accu-geolocation' ), 
		'agl_radio_field_7_render', 
		'pluginPage', 
		'agl_pluginPage_2_section' 
	);
	
	add_settings_field( 
		'gcp_maximumAge', 
		__( 'Maxiumim age (geolocation option)', 'wp-accu-geolocation' ), 
		'agl_text_field_10_render', 
		'pluginPage', 
		'agl_pluginPage_2_section' 
	);

	add_settings_field( 
		'gcp_timeout', 
		__( 'Timeout (geolocation option)', 'wp-accu-geolocation' ), 
		'agl_text_field_8_render', 
		'pluginPage', 
		'agl_pluginPage_2_section' 
	);
}


function agl_radio_field_0_render(  ) { 

	$options = get_option( 'agl_settings' );
	?>
	<input type='radio' id='radio_yes_plugin_enabled' name='agl_settings[plugin_enabled]' <?php checked( $options['plugin_enabled'], 'yes' ); ?> value='yes'>
	<label for='radio_yes_plugin_enabled'>Yes</label>&nbsp;&nbsp;&nbsp;
	<input type='radio' id='radio_no_plugin_enabled' name='agl_settings[plugin_enabled]' <?php checked( $options['plugin_enabled'], 'no' ); ?> value='no'>
	<label for='radio_no_plugin_enabled'>No</label>
	<?php

}


function agl_text_field_1_render(  ) { 

	$options = get_option( 'agl_settings' );
	?>
	<input type='number' name='agl_settings[cookie_life_hrs]' value='<?php echo $options['cookie_life_hrs']; ?>'>
	<?php

}


function agl_radio_field_2_render(  ) { 

	$options = get_option( 'agl_settings' );
	?>
	<input type='radio' id='radio_yes_is_db_store' name='agl_settings[is_db_store]' <?php checked( $options['is_db_store'], 'yes' ); ?> value='yes'>
	<label for='radio_yes_is_db_store'>Yes</label>&nbsp;&nbsp;&nbsp;
	<input type='radio' id='radio_no_is_db_store' name='agl_settings[is_db_store]' <?php checked( $options['is_db_store'], 'no' ); ?> value='no'>
	<label for='radio_no_is_db_store'>No</label>
	<?php

}


function agl_radio_field_3_render(  ) { 

	$options = get_option( 'agl_settings' );
	?>
	<input type='radio' id='radio_yes_is_db_user_store' name='agl_settings[is_db_user_store]' <?php checked( $options['is_db_user_store'], 'yes' ); ?> value='yes'>
	<label for='radio_yes_is_db_user_store'>Yes</label>&nbsp;&nbsp;&nbsp;
	<input type='radio' id='radio_no_is_db_user_store' name='agl_settings[is_db_user_store]' <?php checked( $options['is_db_user_store'], 'no' ); ?> value='no'>
	<label for='radio_no_is_db_user_store'>No</label>
	<?php

}


function agl_radio_field_4_render(  ) { 

	$options = get_option( 'agl_settings' );
	?>
	<input type='radio' id='radio_yes_is_cookie_store' name='agl_settings[is_cookie_store]' <?php checked( $options['is_cookie_store'], 'yes' ); ?> value='yes'>
	<label for='radio_yes_is_cookie_store'>Yes</label>&nbsp;&nbsp;&nbsp;
	<input type='radio' id='radio_no_is_cookie_store' name='agl_settings[is_cookie_store]' <?php checked( $options['is_cookie_store'], 'no' ); ?> value='no'>
	<label for='radio_no_is_cookie_store'>No</label>
	<?php

}


function agl_radio_field_5_render(  ) { 

	$options = get_option( 'agl_settings' );
	?>
	<input type='radio' id='radio_yes_is_ask_onload' name='agl_settings[is_ask_onload]' <?php checked( $options['is_ask_onload'], 'yes' ); ?> value='yes'>
	<label for='radio_yes_is_ask_onload'>Yes</label>&nbsp;&nbsp;&nbsp;
	<input type='radio' id='radio_no_is_ask_onload' name='agl_settings[is_ask_onload]' <?php checked( $options['is_ask_onload'], 'no' ); ?> value='no'>
	<label for='radio_no_is_ask_onload'>No</label>
	<?php

}


function agl_radio_field_6_render(  ) { 

	$options = get_option( 'agl_settings' );
	?>
	<input type='radio' id='radio_yes_is_ask_onclick' name='agl_settings[is_ask_onclick]' <?php checked( $options['is_ask_onclick'], 'yes' ); ?> value='yes'>
	<label for='radio_yes_is_ask_onclick'>Yes</label>&nbsp;&nbsp;&nbsp;
	<input type='radio' id='radio_no_is_ask_onclick' name='agl_settings[is_ask_onclick]' <?php checked( $options['is_ask_onclick'], 'no' ); ?> value='no'>
	<label for='radio_no_is_ask_onclick'>No</label>
	<?php

}


function agl_radio_field_7_render(  ) { 

	$options = get_option( 'agl_settings' );
	?>
	<input type='radio' id='radio_true_gcp_enableHighAccuracy' name='agl_settings[gcp_enableHighAccuracy]' <?php checked( $options['gcp_enableHighAccuracy'], 'true' ); ?> value='true'>
	<label for='radio_true_gcp_enableHighAccuracy'>True</label>&nbsp;&nbsp;&nbsp;
	<input type='radio' id='radio_false_gcp_enableHighAccuracy' name='agl_settings[gcp_enableHighAccuracy]' <?php checked( $options['gcp_enableHighAccuracy'], 'false' ); ?> value='false'>
	<label for='radio_false_gcp_enableHighAccuracy'>False</label>
	<?php

}


function agl_text_field_8_render(  ) { 

	$options = get_option( 'agl_settings' );
	?>
	<input type='number' name='agl_settings[gcp_timeout]' value='<?php echo $options['gcp_timeout']; ?>'>
	<?php

}


function agl_text_field_9_render(  ) { 

	$options = get_option( 'agl_settings' );
	?>
	<input type='text' name='agl_settings[php_date_format]' value='<?php echo $options['php_date_format']; ?>'>
	<?php

}

function agl_text_field_10_render(  ) { 

	$options = get_option( 'agl_settings' );
	?>
	<input type='text' name='agl_settings[gcp_maximumAge]' value='<?php echo $options['gcp_maximumAge']; ?>'>
	<?php

}

function agl_settings_section_1_callback(  ) { 
	echo __( 'Below settings provide various ways of asking the user for geolocation data and also multiple ways of accessing the data. For a detailed explanation please access <a href="http://woo.report/wordpress-accurate-geolocation/" target="_blank">http://woo.report/wordpress-accurate-geolocation/</a>.
		<br/><br/>To display users geolocation on a Google Map please access <a href="http://woo.report/wordpress-accurate-geolocation-map/" target="_blank">http://woo.report/wordpress-accurate-geolocation-map/</a>.', 'wp-accu-geolocation' );
}

function agl_settings_section_2_callback(  ) { 
	echo __( 'For more information about HTML Geolocation please visit W3C API specifications at <a href="http://dev.w3.org/geo/api/spec-source.html" target="_blank">http://dev.w3.org/geo/api/spec-source.html</a>.', 'wp-accu-geolocation' );
}

function agl_options_page(  ) { 
	?>
	<div class="wrap">
		<form action='options.php' method='post'>
		<h2>Accurate Geolocation</h2>
			<?php
			settings_fields( 'pluginPage' );
			do_settings_sections( 'pluginPage' );
			?>

			<p>
			<?php submit_button( 'Save Changes', 'primary', 'submit', false); ?>
			&nbsp;&nbsp;&nbsp;
			<?php submit_button( 'Delete all geolocation data from wp_options table', 'delete', 'agl-delete', false ); ?>
			</p>
			
		</form>
	</div>
	<?php
}