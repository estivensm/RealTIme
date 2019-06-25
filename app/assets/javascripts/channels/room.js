App.room = App.cable.subscriptions.create("RoomChannel", {
  connected: function() {},

  disconnected: function() {},

  received: function(data) {
    console.log(data.message.action)
    console.log($(data.message).attr('id'))
    $(".add_task").append(data["message"]);
  },

  speak: function(message) {
    return this.perform('speak', {
      message: message
    });
  }

});

//$(document).on("keypress", '[data-behavior=demo]', function(event) {
  //if (event.keyCode == 13) {
    //App.room.speak(event.target.value);
    //event.target.value = '';
    //event.preventDefault();
  //}
//});


