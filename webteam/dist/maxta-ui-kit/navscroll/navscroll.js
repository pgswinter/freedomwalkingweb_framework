(function($){

	$.fn.navscroll = function(){

		var me = $(this)
		$(window).scroll(function(){

			if($(window).scrollTop() > 0){

				me.addClass('was-fixed')

			}
			else{

				me.removeClass('was-fixed')

			}

			if($(window).scrollTop() == 0){

				$('> ul > li',me).removeClass('active')		

			}
			if($(window).scrollTop() > ($('#who-we-are').offset().top-106)){	

				$('> ul > li',me).removeClass('active')
				$('> ul > li:nth-child(1)',me).addClass('active')

			}
			if($(window).scrollTop() > ($('#achivement').offset().top-106)){	

				$('> ul > li',me).removeClass('active')
				$('> ul > li:nth-child(2)',me).addClass('active')

			}
			if($(window).scrollTop() > ($('#our-road').offset().top)-106){	

				$('> ul > li',me).removeClass('active')
				$('> ul > li:nth-child(3)',me).addClass('active')

			}
			if($(window).scrollTop() > ($('#best-team').offset().top)-106){	

				$('> ul > li',me).removeClass('active')
				$('> ul > li:nth-child(4)',me).addClass('active')

			}

		})

	}

})(jQuery)