window.addEvent('domready', function() {
  var form = $('speech_form');
  form.set('send', {
    onSuccess: function() {
      $('loader').setStyle('display', 'none');
      $('calculate_button').setStyle('display', 'inline');
    }
  });

  form.addEvent('submit', function(e) {
    e.preventDefault();
    $('calculate_button').setStyle('display', 'none');
    $('loader').setStyle('display', 'inline');
    form.send();
  });
});