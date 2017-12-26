$(document).ready(function($) {
  $('#up').bind('mouseup',total_price_up);
  $('#down').bind('mouseup',total_price_down);
  customer=$('#customer').val()
  function total_price_up()
  {
    customer++;
    if(customer>=50)
    {
      customer=50;
    }
    price();
  }
  function total_price_down()
  {
    customer--;
    if(customer<=1)
    {
      customer=1;
    }
    price();
  }
  function price()
  {
    $('#customer').val(customer)
    var final_price = Math.round($('#price').val()*$('#customer').val()*100)/100;
    $('.total_price').val(final_price);
  }

  //chosedate

  var date = new Date();
  var today = new Date(date.getFullYear(), date.getMonth(),
    date.getDate());
  $('#datepicker').datepicker({
    startDate: today,
    autoclose: true,
    format: "dd/mm/yyyy",
  });

  // SlideImage
  $("#myCarousel").carousel({interval: 3000});
  // Enable Carousel Indicators
  $(".item1").click(function() {
    $("#myCarousel").carousel(0);
  });
  $(".item2").click(function() {
    $("#myCarousel").carousel(1);
  });
  $(".item3").click(function() {
    $("#myCarousel").carousel(2);
  });
  $(".item4").click(function() {
    $("#myCarousel").carousel(3);
  });
  // Enable Carousel Controls
  $(".left").click(function() {
    $("#myCarousel").carousel("prev");
  });
  $(".right").click(function() {
    $("#myCarousel").carousel("next");
  });
  $(".hover").mouseleave(function() {
    $(this).removeClass("hover");
  });
});
