App.tmp = App.cable.subscriptions.create("SensorsChannel", {
  connected: function() {
    alert('sth');
  },
  disconnected: function() {

  },
  received: function(data) {
    console.log(data);
    document.getElementById(data.name).innerHTML = (data.mode == 1 ? 'zajęta' : 'otwarta');
  }
});

