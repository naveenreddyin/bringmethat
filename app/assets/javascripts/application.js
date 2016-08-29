// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets


$( document ).ready(function() {

frontpage_google_places_from();

frontpage_google_places_to();

});

function frontpage_google_places_from(){

	google.maps.event.addDomListener(window, 'load', function () {
            var places = new google.maps.places.Autocomplete(document.getElementById('frontpage-from-id'), {types: ['(cities)']});
            google.maps.event.addListener(places, 'place_changed', function () {
                var place = places.getPlace();
                console.log(place);
                // var address = place.formatted_address;
                // var latitude = place.geometry.location.A;
                // var longitude = place.geometry.location.F;
                // var mesg = "Address: " + address;
                // mesg += "\nLatitude: " + latitude;
                // mesg += "\nLongitude: " + longitude;
                // alert(mesg);
                // console.log(place.geometry.location.lat());
                
                var city = getAddressComponent(place, 'locality');
                var country = getAddressComponent(place, 'country');
                // console.log(postal_code);
                // console.log(getAddressComponent(place, 'locality'));
                // console.log(getAddressComponent(place, 'country'));

                if(city != '')
                    $('#from_hidden_id').val(city);
                // else
                //     $('#frontpage_city').val(city);

                // $('#frontpage_country').val(country);
                

    });
});

}


function frontpage_google_places_to(){

	google.maps.event.addDomListener(window, 'load', function () {
            var places = new google.maps.places.Autocomplete(document.getElementById('frontpage-to-id'), {types: ['(cities)']});
            google.maps.event.addListener(places, 'place_changed', function () {
                var place = places.getPlace();
                console.log(place);
                // var address = place.formatted_address;
                // var latitude = place.geometry.location.A;
                // var longitude = place.geometry.location.F;
                // var mesg = "Address: " + address;
                // mesg += "\nLatitude: " + latitude;
                // mesg += "\nLongitude: " + longitude;
                // alert(mesg);
                // console.log(place.geometry.location.lat());
                
                var city = getAddressComponent(place, 'locality');
                var country = getAddressComponent(place, 'country');
                // console.log(postal_code);
                // console.log(getAddressComponent(place, 'locality'));
                // console.log(getAddressComponent(place, 'country'));

                if(city != '')
                    $('#to_hidden_id').val(city);
                // else
                //     $('#frontpage_city').val(city);

                // $('#frontpage_country').val(country);
                

    		});
	});

}

function getAddressComponent(place, token) {
    var arrAddress = place.address_components;
    var value = '';

// iterate through address_component array
$.each(arrAddress, function (i, address_component) {
    // console.log('address_component:'+i);

    if (address_component.types[0] == token){
        console.log(i+": "+token+":"+address_component.long_name);
        value = address_component.long_name;
    }

    
    //return false; // break the loop   
});

    return value;
}
