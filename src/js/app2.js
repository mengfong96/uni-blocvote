App = { 

	
	init: async function() {
	    // Load pets.
	    $.getJSON('../candidates.json', function(data) {
	      var petsRow = $('#cansRow');
	      var petTemplate = $('#cansTemplate');

	      for (i = 0; i < data.length; i ++) {
	        petTemplate.find('.panel-title').text('Candidate' +  (data[i].id + 1));
	        petTemplate.find('img').attr('src', data[i].picture);
	        petTemplate.find('.can-name').text(data[i].name);
	        petTemplate.find('.can-program').text(data[i].program);
	        petTemplate.find('.can-year').text(data[i].year);

	        petsRow.append(petTemplate.html());
	      }
	    });

	}
};

$(function() {
  $(window).load(function() {
    App.init();
  });
});