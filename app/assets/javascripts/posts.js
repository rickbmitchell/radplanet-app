$(document).ready(function(){

    (function() {
        var documentEl = $(document),
            parallaxBg = $('div.home-myParallax');
        documentEl.on('scroll', function() {
            var currScrollPos = documentEl.scrollTop();
            parallaxBg.css('background-position', '0 ' + -currScrollPos/2 + 'px');
        });
    })();

});