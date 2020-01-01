(function() {

    jQuery('.portfolio-gallery li figure a img').addClass('portfolio-gallery-img');
    
    jQuery('.portfolio-gallery li figure a').attr('data-lightbox','portfolio-images');

    $(document).ready(function(){
        lightbox.option({
            'resizeDuration': 200,                  
            'wrapAround': true
          });
        
        $('.pagination-container').pagination({
            items: ,
            itemsOnPage: 2,  
            cssStyle: 'dark-theme'
        });
    });
	
})(jQuery);