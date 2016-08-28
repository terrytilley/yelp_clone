$(document).ready(function() {

  console.log("1");

  $('.endorsements-link').on('click', function(event){
      event.preventDefault();

      var endorsementCount = $(this).siblings('.endorsements_count');

      $.post(this.href, function(response){
        endorsementCount.text(response.new_endorsement_count);
    });
  });
});
