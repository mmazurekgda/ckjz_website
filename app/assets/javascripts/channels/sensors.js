App.tmp = App.cable.subscriptions.create("SensorsChannel", {
  connected: function() {
  },
  disconnected: function() {

  },
  received: function(data) {
    var $text =  $('#'+data.name);
    $text.text((data.mode ? 'zajęta' : 'otwarta'));
    $text.css('color', (data.mode ? 'red' : 'green'));
  }
});

