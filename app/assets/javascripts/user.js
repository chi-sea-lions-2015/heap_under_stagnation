$(document).ready(function() {

  $(".logout_button").on("click", function(event){
    console.log("HEY!!!")
    var delete_url = $(this).attr("href");
    event.preventDefault();
    $.ajax({
      url: "/logout",
      method: "delete",
      success: function(response){
        console.log(response);
        $(".pull-right").append("<%= escape_javascript(render :partial => '/layouts/logout', layout: false) %>");
        $(".logout_button").hide();
      }

    });
  });

});
