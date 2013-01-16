//= require active_admin/base
//= require jquery.ui.all
//= require jquery-ui-datepicker-1.9.2.custom
//= require jquery.colorbox
//= require excanvas
//= require jquery.jqplot

$(document).ready(function() {
  $('input.hasDatetimePicker').datepicker({
    dateFormat: "yy-mm-dd"
  });

  $(".iframe").colorbox({iframe:true, width:"80%", height:"90%"});

   $.jqplot('chartdiv', [[[1, 2],[3,5.12],[5,13.1],[7,33.6],[9,85.9],[11,219.9]]]);

}); 

