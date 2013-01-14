//= require active_admin/base
//= require jquery.ui.all
//= require jquery-ui-datepicker-1.9.2.custom
//= require jquery.ui.ufd.js
$(document).ready(function() {
  console.log('active_admin')
  $('input.hasDatetimePicker').datepicker({
    dateFormat: "yy-mm-dd"
  });

  $(".waste_class").ufd({log:true});

}); 

