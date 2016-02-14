$(function(){

	$('#homeslider').bxSlider({
		controls: true,
		auto: false,
		infiniteLoop: true,
		pager: false
	});

	var i = 0;
	$('.contcomment').slimScroll({
		height: '275px'
	});

/*	$('.añadeCarrituHome').on('click', function(){
		setTimeout(function() {
			$('.cross').trigger('click');
		}, 5000);
	});*/


	$('.sumaComentario').on('click', function(){
		$('.agregaComentario').toggleClass('activo')
	});


    $(".ancla").click(function(){
		vinculo = $(this).attr("href")
		destino = $(vinculo).offset().top - 100;    
		$("html:not(:animated), body:not(:animated)").animate({scrollTop:destino}, 800)
			return false
	});
    var removeClass = true;

	$('.carrito').on('click', function(){
		$('.carritoHover').toggleClass('activo')
		removeClass = false
	})
	$('.boton-search').on('click', function(){
		$('#search_block_top').toggleClass('activo')
		$('.boton-search i').toggleClass('icon-cross')
		$('.boton-search i').toggleClass('icon-search')
	})

	$('.login').on('click', function(){
		$('.accedeCuentaChica').toggleClass('activo')
		removeClass = false
	});

	$('.nombre').on('click', function(){
		$('.despliega').addClass('activo')
		removeClass = false
	});

	$('.menudespliega').on('click', function(){
		$('.contenedorMenu').toggleClass('activaMenu')
		$('.menudespliega i').toggleClass('icon-cross')
		$('.menudespliega i').toggleClass('icon-menu')
	});

	$('#cierraDespliega').on('click', function(){
		$('.carritoHover').removeClass('activo')
		$('.despliega').removeClass('activo')
	});

	$("html").on('click',function () {
		if (removeClass) {
			$('.carritoHover').removeClass('activo');
			//$('.accedeCuenta').removeClass('activo');
			$('.despliega').removeClass('activo');
		}
		removeClass = true;
	});
    
    var nav = $('.nav-container');
    var head = $('header');
    var menu = $('.contenedorMenu');
    var contenido = $('.cd-main-content');
    var fadeBegin = 0;
    var fadeFinish = 400;
    var fadingElement = $('#topOpacidad');

    $(window).scroll(function () {
        if ($(this).scrollTop() > 136) {
            nav.addClass("f-nav");
        } else {
            nav.removeClass("f-nav");
        }
        if ($(this).scrollTop() > 40) {
			head.addClass('head-fixed');
			contenido.addClass('margin-top');
		} else {
			head.removeClass('head-fixed');
			contenido.removeClass('margin-top')
		}


		/*var offset = $(document).scrollTop(), opacity = 0;
        //console.log(offset);
        if( offset <= fadeBegin ){
            opacity = 1;
        } else if( offset <= fadeFinish ){
            opacity = 1 - offset / fadeFinish;

        }
        fadingElement.css('opacity',opacity);*/
    });

	/*defineSizes();
	$(window).on("resize", defineSizes);
	function defineSizes(){
		$(".categoriasHome .contenedor, #htmlcontent_home").each(function(i,el){
			$(el).css({
				"height": ($(".contenedor, #htmlcontent_home").width() * 0.75)+"px"
			});
		});
	}

	$('.menuTop > li:has(> ul)').addClass('item-has-children')

	$('.item-has-children > ul').addClass('sub-menu')
	$('.item-has-children > ul').addClass('sub-menuDesktop')

	$('#subcategories').addClass('subcategories')*/

	if($(window).width() < 800){

		$('.sub-menuDesktop > li:has(> ul)').addClass('item-has-children')
		$('.sub-menuDesktop > li > ul').addClass('sub-menu')
	}
		
	$(".icono").each(function(i){
		i++;
		$(this).addClass("ico"+i);
	});	

	$(".menuTop > li").each(function(i){
		i++;
		$(this).addClass("maniaBackground"+i);
	});	

	$('.submenu-container > li').removeClass("listaMenuTop");

	$('.menuTop > li > ul').addClass('hoverMenuUl');

	$('.close').on('click', function(){
		$('.accedeCuentaChica').removeClass('activo')
	});



	if($(window).width() > 800){
		$('.menuTop > li:has(> ul)').addClass('hoverMenu')
	}

	$('.owl-carousel').owlCarousel({
		autoplay:false,
		autoplayHoverPause:true,
		autoplayTimeout:3000,
		loop:true,
		margin:10,
		nav:false,
		pagination:true,
		responsive:{
			0:{
				items:1
			},
			600:{
				items:3
			},
			1000:{
				items:5
			}
		}
	})

	$('input, textarea').placeholder();

	$('.dropdown-button').dropdown({
		inDuration: 300,
		outDuration: 225,
		constrain_width: false, // Does not change width of dropdown to that of the activator
		hover: true, // Activate on hover
		gutter: 0, // Spacing from edge
		belowOrigin: false // Displays dropdown below the button
		}
	);

	/*$('section[data-type="parallax_section"]').each(function(){
		var $bgobj = $(this); // Variable para asignacion de objeto
		$(window).scroll(function() {
			$window = $(window);
			var yPos = -($window.scrollTop() / $bgobj.data('speed'));
			// cordinadas del background
			var coords = '50% '+ yPos + 'px';
			// moviendo el background
			$bgobj.css({ backgroundPosition: coords });
		});
	});*/

	//svg animado

	var beginAC = 80,
	    endAC = 320,
	    beginB = 80,
	    endB = 320;

	function inAC(s) {
	    s.draw('80% - 240', '80%', 0.3, {
	        delay: 0.1,
	        callback: function() {
	            inAC2(s)
	        }
	    });
	}

	function inAC2(s) {
	    s.draw('100% - 545', '100% - 305', 0.6, {
	        easing: ease.ease('elastic-out', 1, 0.3)
	    });
	}

	function inB(s) {
	    s.draw(beginB - 60, endB + 60, 0.1, {
	        callback: function() {
	            inB2(s)
	        }
	    });
	}

	function inB2(s) {
	    s.draw(beginB + 120, endB - 120, 0.3, {
	        easing: ease.ease('bounce-out', 1, 0.3)
	    });
	}

	/* Out animations (to burger icon) */

	function outAC(s) {
	    s.draw('90% - 240', '90%', 0.1, {
	        easing: ease.ease('elastic-in', 1, 0.3),
	        callback: function() {
	            outAC2(s)
	        }
	    });
	}

	function outAC2(s) {
	    s.draw('20% - 240', '20%', 0.3, {
	        callback: function() {
	            outAC3(s)
	        }
	    });
	}

	function outAC3(s) {
	    s.draw(beginAC, endAC, 0.7, {
	        easing: ease.ease('elastic-out', 1, 0.3)
	    });
	}

	function outB(s) {
	    s.draw(beginB, endB, 0.7, {
	        delay: 0.1,
	        easing: ease.ease('elastic-out', 2, 0.4)
	    });
	}

	/* Awesome burger default */

	var pathA = document.getElementById('pathA'),
		pathB = document.getElementById('pathB'),
		pathC = document.getElementById('pathC'),
		segmentA = new Segment(pathA, beginAC, endAC),
		segmentB = new Segment(pathB, beginB, endB),
		segmentC = new Segment(pathC, beginAC, endAC),
		trigger = document.getElementById('menu-icon-trigger'),
		toCloseIcon = true,
		dummy = document.getElementById('menuTop'),
		wrapper = document.getElementById('menu-icon-wrapper');

	wrapper.style.visibility = 'visible';

	trigger.onclick = function() {
		if (toCloseIcon) {
			inAC(segmentA);
			inB(segmentB);
			inAC(segmentC);

			dummy.className = 'menuTop activo';
		} else {
			outAC(segmentA);
			outB(segmentB);
			outAC(segmentC);

			dummy.className = 'menuTop';
		}
		toCloseIcon = !toCloseIcon;
	};

	/* Scale functions */

	function addScale(m) {
		m.className = 'menu-icon-wrapper scaled';
	}

	function removeScale(m) {
		m.className = 'menu-icon-wrapper';
	}

	/* Awesome burger scaled */

	/*var pathD = document.getElementById('pathD'),
		pathE = document.getElementById('pathE'),
		pathF = document.getElementById('pathF'),
		segmentD = new Segment(pathD, beginAC, endAC),
		segmentE = new Segment(pathE, beginB, endB),
		segmentF = new Segment(pathF, beginAC, endAC),
		wrapper2 = document.getElementById('menu-icon-wrapper2'),
		trigger2 = document.getElementById('menu-icon-trigger2'),
		toCloseIcon2 = true,
		dummy2 = document.getElementById('dummy2');

	wrapper2.style.visibility = 'visible';

	trigger2.onclick = function() {
		addScale(wrapper2);
		if (toCloseIcon2) {
			inAC(segmentD);
			inB(segmentE);
			inAC(segmentF);

			dummy2.className = 'dummy dummy--active';
		} else {
			outAC(segmentD);
			outB(segmentE);
			outAC(segmentF);

			dummy2.className = 'dummy';
		}
		toCloseIcon2 = !toCloseIcon2;
		setTimeout(function() {
			removeScale(wrapper2)
		}, 450);
	};*/

});
