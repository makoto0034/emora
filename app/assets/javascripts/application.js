// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require activestorage
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require infinite-scroll.pkgd.min
//= require turbolinks
//= require_tree .

//flashの設定
$(document).on('turbolinks:load', function(){
  setTimeout("$('.notice').fadeOut('slow')", 3000)
  setTimeout("$('.alert').fadeOut('slow')", 3000)
  setTimeout("$('.success').fadeOut('slow')", 3000)
});

//ハンバーガーメニューの設定
$(document).on('turbolinks:load', function(){
    var $body = document.body
    , $menu_trigger = $body.getElementsByClassName('menu-trigger')[0];

    if ( typeof $menu_trigger !== 'undefined' ) {
        $menu_trigger.addEventListener('click', function() {
            $body.className = ( $body.className == 'menu-active' )? '' : 'menu-active';
        });
    }
});

//emoraロゴアニメーション設定
// $(document).on('turbolinks:load', function(){
// 	setTimeout(function(){
// 		$('.start_container p').fadeIn(1600);
// 	},500);
// 	setTimeout(function(){
// 		$('.start_container').fadeOut(500);
// 	},5000);
// });

//ユーザー詳細画面のタブ設定
$(document).on('turbolinks:load', function(){
  $('#userTab a').click(function(e){
    e.preventDefault();
    $(this).tab('show');
  });
});

//ユーザー 詳細画面のユーザ検索画面（モーダルウィンドウ）
$(document).on('turbolinks:load', function(){
  $('.js-modal-open').on('click',function(){
    $('.js-modal').fadeIn();
    return false;
  });
  $('.js-modal-close').on('click',function(){
    $('.js-modal').fadeOut();
    return false;
  })
});
// $(document).on('turbolinks:load', function() {
//   console.log("Aaa");
//     var EffectH = 100;
//     var EffectTop = 15;
//     var EffectTime = 400;
//
//   $('.emora-description').css({
//      position: 'relative',
//      left: 0,
//      top: EffectTop,
//      opacity: 0,
//      transition: EffectTime + 'ms'
//    });
//
//   $(window).on('scroll load',function(){
//     $('.emora-description').each( function(){
//       var scTop = $(this).scrollTop();
//       var scBottom = scTop + $(this).height();
//       var effectPos = scBottom - EffectH;
//       $(".scroll").text(effectPos);
//     // エフェクト対象それぞれの位置とスクロール位置を比べて
//     // 範囲に入っていればエフェクトを実行する
//     $('.emora-description').each( function() {
//       var thisPos = $(this).offset().top;
//       $('.scroll2').text(thisPos);
//       console.log(thisPos);
//       if ( thisPos < effectPos ) {
//         $(this).css({ 'opacity' : 1, top: 0 });
//       }
//     });
//   });
// });
// });

//scroll イベントが発火しない
