      Aloha.ready( function() {
        var $ = Aloha.jQuery;
/*
// read the data from our database backend
	var request = jQuery.ajax({
		url: window.location.pathname + ".8.json",
		type: "GET",
		dataType: "json"
	});

    var fillValues = function(name, value) {
        console.log('found ' + name + ' --- ' +value);

        jQuery('#'+name).html(value);
        if(value instanceof Object) {
            jQuery.each(value,fillValues);
        }
    }

	request.done(function(msg) {
		// insert all content into the coresponding html container
		jQuery.each(msg, fillValues);
	});

	request.fail(function(jqXHR, textStatus) {
		jQuery("#log p").html( "Request failed: " + textStatus );
		alert("Request failed: " + textStatus );
	});
  */
        $('.editable').aloha();
        Aloha.bind('aloha-smart-content-changed', function() {
		console.log('Aloha smart event handled.');

		var content = Aloha.activeEditable.getContents();
		var id = Aloha.activeEditable.obj[0].id;

		var params = {};
		params[id] = content;
		params['_charset_']='UTF-8';


		var save = jQuery.ajax({
			url: "",

			type: "POST",
			data: params,
			dataType: "json"
		});

		save.done(function(msg) {
			jQuery("#log").html( msg ).show().delay(800).fadeOut();
		});

		save.error(function(jqXHR, textStatus) {
			alert( "Request failed: " + textStatus );
		});
	});
});

