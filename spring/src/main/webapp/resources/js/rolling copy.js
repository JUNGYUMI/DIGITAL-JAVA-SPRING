$(function(){
    var newsRolling=setInterval(function(){
        $('.box-rolling-news').first().animate({'margin-top':'-24px'},700,function(){
            $(this).detach().appendTo('.box-rolling-newslist').css('margin-top','0px').removeAttr('style');
            /*
            $(A).prepend(B) : A요소 안의 제일 앞에 B를 html코드로 추가해라 
            $(A). prependTo(B) : B요소 안의 제일 앞에 A를 html코드로 추가해라 */
        });
    },2000)
    var cardRollingNum = cardRolling();
    $('.box-right2').hover(function(){
        //마우스가 요소 안으로 들어갈 때
        clearInterval(cardRollingNum);
    },function(){
        //마우스가 요소 밖으로 나갈 때
        cardRollingNum = cardRolling();
    })    
})
function cardRolling(){
    return setInterval(function(){
        $('.box-card-nav> .card').first().animate({'margin-left':'-281'},1000,function(){
            $(this).detach().appendTo('.box-card-nav').removeAttr('style');
        })
    },3000)
}