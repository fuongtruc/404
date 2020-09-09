

var slider = $('#banner_slider_654');
if (slider.length) {
    slider.owlCarousel({
        direction: 'ltr',
        items: 1,
        singleItem : true,
        slideSpeed: 400,
        autoPlay: '3000',
        stopOnHover: true,
        lazyLoad:true,
                                    pagination: true,
                                                navigation: true,
            navigationText: ['Trước', 'Tiếp theo']
                    });
}

///


