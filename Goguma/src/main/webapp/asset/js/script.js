//fixheaer
var scrollTop = 0;
var scrollSkill = 0;
scrollTop = $(document).scrollTop();
fixHeader();
activateSkillMotion();

//윈도우 창 조절
$(window).on('scroll resize', function () {
    scrollTop = $(document).scrollTop();
    fixHeader();
    activateSkillMotion();
});

function fixHeader() {
   if(scrollTop > 150) {
       $('header').addClass('on');
   } else {
       $('header').removeClass('on');
   }
}


//메인 슬라이드
$(function() {
    $('.main-img .slide').slick({
        arrows: true,   
        dots: false,    
        fade: true,    
        autoplay: false,  
        autoplaySpeed: 5000, 
        pauseOnHover: false,
        pauseOnFocus: false
    })
    $('.slick-prev').text('prev');
})


function activateSkillMotion() {
    // console.log(scrollTop)
   if(scrollTop > 1800) {
       $('.skill').addClass('active');
    } else {
        $('.skill').removeClass('active');
   }
}

//애니메이션 
$(function() {
    $('.animate').scrolla({
        mobile: false,
        once: false
    });
});