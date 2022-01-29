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
        autoplay: false,  
        autoplaySpeed: 7000, 
        pauseOnHover: false,
        pauseOnFocus: false
    })
    $('.slick-prev').text('prev');
    // $('.projectSlide').slick({
    //     arrows:true,  //화살표
    //     dots:true,  //인디케이터
    //     autoplay:true,    //자동 재생
    //     infinite: true,
    //     slidesToShow: 1,
    //     slidesToScroll: 1,
    //     autoplaySpeed:6000,  //재생 시간
    //     pauseOnHover:true,  //호버시 멈추도록 설정
    //     pauseOnFocus:true
    // });
})

