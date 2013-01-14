//= require active_admin/base
//= require jquery.ui.all
//= require jquery-ui-datepicker-1.9.2.custom
//= require jquery.colorbox
$(document).ready(function() {
  console.log('active_admin')
  $('input.hasDatetimePicker').datepicker({
    dateFormat: "yy-mm-dd"
  });

  $(".iframe").colorbox({iframe:true, width:"80%", height:"90%"});

}); 

