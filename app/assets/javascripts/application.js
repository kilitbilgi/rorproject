// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require jquery-migrate
//= require jquery-ui
//= require jquery.slider.min
//= require custom-form-elements
//= require jquery.selectbox
//= require script
var cars_paginate = function() {
    $(".results").load("/cars/pagination", {'page':0}, function() {$("#1-page").addClass('current');});
    $(".paginate_click").click(function (e) {
        var clicked_id = $(this).attr("id").split("-");
        var page_num = parseInt(clicked_id[0]);
        $('.paginate_click').removeClass('current');
        $(".results").load("/cars/pagination", {'page':(page_num-1)}, function(){
        });
        $(this).addClass('current');
        return false;
    });
};
$(document).on("page:load ready", cars_paginate);
$(function () {
    $('[data-toggle="popover"]').popover({
            html:true
        }
    )
})