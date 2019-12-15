//学部のselect要素が変更になるとイベントが発生
$(document).on('turbolinks:load', function() {
  var $children = $('.course'); //学科の要素を変数に入れます。
  var original = $children.html(); //後のイベントで、不要なoption要素を削除するため、オリジナルをとっておく

  $('.faculty').change(function() {

    //選択された学科のvalueを取得し変数に入れる
    var val1 = $(this).val();
    console.log(val1);

    //削除された要素をもとに戻すため.html(original)を入れておく
    $children.html(original).find('option').each(function() {
      var val2 = $(this).data('val'); //data-valの値を取得
      //valueと異なるdata-valを持つ要素を削除
      if (val1 != val2) {
        $(this).not(':first-child').remove();
      }

    });

    //学部のselect要素が未選択の場合、学科をdisabledにする
    if ($(this).val() == "") {
      $children.attr('disabled', 'disabled');
    } else {
      $children.removeAttr('disabled');
    }
  });
});

$(document).on('turbolinks:load',function(){
  $('.day_of_the_week').change(function(){
    if ($(this).val() == "") {
      $(".period").attr('disabled','disabled');
    }else{
      $(".period").removeAttr('disabled');
    }
  });
});
