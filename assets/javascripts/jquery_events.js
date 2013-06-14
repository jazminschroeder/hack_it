$(document).ready(function(){
  $('.event').on('mouseenter', function(){
    $('.highlight').removeClass('highlight')
    $(this).addClass('highlight');
  });
  
  $('#events').on('click', '.label-info', function(){
    $(this).parent().find('.details').slideToggle('fast');
  });

  $('#upcoming').on('click', function(){
    $('.highlight').removeClass('highlight')
    $('.event').filter('.upcoming').toggleClass('featured')
  });

}); 
