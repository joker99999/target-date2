$(function(){
  function buildHTML(sharecomment){
    let html = `<p>
                  ${sharecomment.user_name}
                  ${sharecomment.text}
                </p>`
    return html;
  }
  $('#new_sharecomment').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.sharecomments').append(html);
      $('.share-textbox').val('');
      $('.share-submit').prop('disabled', false);
    })
  })
});