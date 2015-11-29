$(function(){

	$('#homeslider').bxSlider({
		controls: false,
		auto: false,
		infiniteLoop: false,
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
    var menu = $('.contenedorMenu')
    var contenido = $('.cd-main-content')
    $(window).scroll(function () {
        if ($(this).scrollTop() > 136) {
            nav.addClass("f-nav");
        } else {
            nav.removeClass("f-nav");
        }
        if ($(this).scrollTop() > 100) {
			head.addClass('head-fixed');
			contenido.addClass('margin-top');
		} else {
			head.removeClass('head-fixed');
			contenido.removeClass('margin-top')
		}
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

});
