
window.addEvent('domready', function() {
  var form = $('speech_form');
  form.set('send', {
    onSuccess: function(response) {
      $('loader').setStyle('display', 'none');
      $('calculate_button').setStyle('display', 'inline');
      $('result').set({
        html: response,
        styles: { visibility: 'visible' }
      });
    }
  });

  form.addEvent('submit', function(e) {
    e.preventDefault();
    if(this.getElement('textarea').get('value').trim() != '') {
      $('calculate_button').setStyle('display', 'none');
      $('loader').setStyle('display', 'inline');
      $('result').setStyle('visibility', 'hidden');
      form.send();
    }
  });
});