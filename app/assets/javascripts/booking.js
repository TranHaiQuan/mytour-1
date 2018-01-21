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
  var final_price = Math.round($('#price').val()*$('#customer').val());
  $('.total_price').val(final_price);
}

$(document).on('click', '#up', function() {
  customer=$('#customer').val()
  total_price_up();
});

$(document).on('click', '#down', function() {
  customer=$('#customer').val()
  total_price_down();
});
