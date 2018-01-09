$(document).ready(function($) {
  $('#search-input').on('keyup', filter_search);
  function filter_search() {
    var input, filter, table_body, tr, td, i;
    input = document.getElementById("search-input");
    filter = input.value.toUpperCase();
    table_body = document.getElementById("user-table")
    tr = table_body.getElementsByTagName("tr")
    for(i = 0; i < tr.length; i++){
      td = tr[i].getElementsByTagName("td")[2]
      if(td) {
        if(td.innerHTML.toUpperCase().indexOf(filter) > -1){
          tr[i].style.display = "";
        } else {
          tr[i].style.display = "none";
        }
      }
    }
  }
});
