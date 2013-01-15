//= require active_admin/base
//= require jquery.ui.all
//= require jquery-ui-datepicker-1.9.2.custom
//= require jquery.colorbox
//= require jschart

$(document).ready(function() {
  $('input.hasDatetimePicker').datepicker({
    dateFormat: "yy-mm-dd"
  });

  $(".iframe").colorbox({iframe:true, width:"80%", height:"90%"});

}); 

