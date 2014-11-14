$(document).ready(function() {
	console.log("it works");
	// Activar plugins
	$('.use-select2').select2();
	$('.datepicker').datepicker({
		format: 'dd/mm/yyyy'
	});

	// Elemento activo de navbar
	var liActive = $('input#navbar_active').val();
	$('ul.nav.navbar-nav li.' + liActive).addClass('active');
});