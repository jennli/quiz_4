$(document).ready(function() {
  $.ajax({
    url: "http://localhost:3000/companies.json",
    method: "get",
    error: function(){
      alert("error");
    },
    success: function(res){
      $('#companies').html('');
      var companies = res.companies;
      var i = 0;
      while(i < companies.length){

        var template = $('#company-list').html();
        var renderedHtml = Mustache.render(template, companies[i]);
        $('#companies').prepend(renderedHtml);
        ++i;
      }
      $(".company").hide();
      $('#companies .company').each(function(i) {
        $(this).delay((i++) * 500).fadeTo(1000, 1);
      });
    }
  });

  $("#companies").on("click", "a", function(){
    var currentLikes =  $(this).data("likes");
    $.ajax({
      url: "http://localhost:3000/companies/" + $(this).data("cid") + ".json",
      method: "patch",
      error: function() {
        alert("try again!");
      },
      success: function(e){
        alert("liked!");
        $(this).html("Like (" + (currentLikes+1) + ")");
      }.bind(this),
      data: {company:{likes: currentLikes+1} }
    });
  });
});
