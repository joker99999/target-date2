$(function(){
  function buildHTML(sharecomment){
    let html = `<p>
                  <strong>
                    <a href=/users/${sharecomment.user_id}>${sharecomment.user_name}</a>：
                  </strong>
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
      $('.comments').append(html);
      $('.share-textbox').val('');
      $('.share-submit').prop('disabled', false);
    })
  })
})