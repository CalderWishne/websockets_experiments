console.log('in chat.js');

var dispatcher = new WebSocketRails('localhost:3000/websocket');

$(function(event){
console.log('jQuery!');

  $('#start_chat').on('click', function(event){
    event.preventDefault();
    $('.chat_form').show();
    $(this).hide();
  });

  $('.chat_form').on('submit', function(event){
    event.preventDefault();


  });
});
