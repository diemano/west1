
var aglActionName = 'agl_request';
var aglPhpParams;

function aglInitialise() {
	if ( geoPosition.init() ) {
		geoPosition.getCurrentPosition(aglShowPosition, aglShowError, {maximumAge: aglPhpParams.gcp_maximumAge, enableHighAccuracy: aglPhpParams.gcp_enableHighAccuracy, timeout: aglPhpParams.gcp_timeout} );
	} else {
		var data = {
	        'action': aglActionName,
	        'error_code': -1,
	        'error_message': 'Geolocation is not available. Try getting a device from the Stone Age, at least :)'
    	};

    	aglPostData(data);
	}
}

// Information of our Request
function aglShowPosition(position) {
	var data = {
        'action': aglActionName,
        'latitude': parseFloat( position.coords.latitude ),
        'longitude': parseFloat( position.coords.longitude ),
        'altitude': parseFloat( position.coords.altitude ),
        'accuracy': parseFloat( position.coords.accuracy ),
        'altitudeAccuracy': parseFloat( position.coords.altitudeAccuracy ),
        'heading': parseFloat( position.coords.heading ),
        'speed': parseFloat( position.coords.speed )
	};

	aglPostData(data);
}

function aglShowError(error) {
    var data = {
        'action': aglActionName,
        'error_code': error.code,
        'error_message': error.message
	};

	aglPostData(data);
}

function aglPostData(data) {
	jQuery.post(aglParams.ajaxUrl, data, function(response) {
    	// console.log(response);
    }, 'json');
}

function aglGetPhpParams() {
	var ajax = jQuery.ajax({
	    url: aglParams.ajaxUrl + '?action=agl_get_php',
	    type: 'POST',
	    contentType: 'application/json; charset=utf-8',
	    dataType: 'json',
	    async: false,
	    statusCode: {
	        404: function () {
	            alert('Page not found.');
	        }
	    }
	});

	ajax.done(function (response, textStatus, jqXHR) {
	    aglPhpParams = response;
	});

	ajax.fail(function (jqXHR, textStatus, errorThrown) {
	    alert('No data available!');
	});
}

jQuery(document).ready(function($) {
	aglGetPhpParams();

	if (aglPhpParams.is_cookie_permission != 'yes') {
		if (aglPhpParams.is_ask_onload == 'yes') {
			window.onload = aglInitialise;
		}
	}
	
	if (aglPhpParams.is_ask_onclick == 'yes') {
		jQuery('#aglId').click(aglInitialise);
	}
});