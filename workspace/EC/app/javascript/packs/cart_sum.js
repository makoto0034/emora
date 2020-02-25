$('select').change(function(e){
  console.log(e.target.dataset.id);
  var product_count = $(this).val();
  console.log(product_count);
  $.ajax({
    url:"charges/update",
    type:"POST",
    beforeSend: function(xhr) {
      xhr.setRequestHeader('X-CSRF-Token',
       $('meta[name="csrf-token"]').attr('content')
     )},
    data:{
      produt_id:e.target.dataset.id,
      product_count:product_count
    }
  });
  location.reload();
});
