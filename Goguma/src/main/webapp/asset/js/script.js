//top으로 이동
var scrollTop = 0;
scrollTop = $(document).scrollTop();

$(function(){
    $('.top').on('click', function(){
        let scroll = $('.inner-header').offset().top;
        $('html, body').animate({scrollTop: (scroll)}, 300);
    });
});

//메인 슬라이드
$(function() {
    $('.main-img .slide').slick({
        arrows: true,   
        dots: false,    
        fade: true,    
        autoplay: true,  
        autoplaySpeed: 5000, 
        pauseOnHover: false,
        pauseOnFocus: false
    })
    $('.slick-prev').text('prev');
})
