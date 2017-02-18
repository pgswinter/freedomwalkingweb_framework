(function($){
	'use strict'

	var defaults = {

		ctrlItem: true,
		pageItem: true,
		auto: false,
		gallery: false,
		heightCRS: 'auto',
		zoomCRS: true,

	}

	$.fn.maxtaCRS = function(options){

		var maxtaCRS = $(this),
			maxtaCRSWrap = maxtaCRS.find('ul'),
			maxtaCRSItem = maxtaCRS.find('ul').find('li'),

			settings = $.extend({},defaults,options) ,

			getWidtElem = $(this).width(),
			getNumbItem = maxtaCRS.find('ul').find('li').length

		var heightCRS = function(){

			var setHeightCRS = settings.heightCRS
			return maxtaCRS.height(setHeightCRS)
			
		}

		var setWidt = function(){

			var widtOfCRS = getWidtElem * maxtaCRS.find('ul').find('li').length
			maxtaCRSWrap.width(widtOfCRS)
			maxtaCRSItem.width(maxtaCRS.width())

		}

		var moveLeft = function(){

			var finalItem = maxtaCRSWrap.find('li:nth-child('+getNumbItem+')')
			var getIndex = maxtaCRSWrap.find('li.active').index() + 1
			var activeItem = maxtaCRSWrap.find('li.active')

			// Syn with pagination
			var page = maxtaCRS.find('ol')
			var pageItems = page.find('li')
				
			console.log(getIndex)

			if(finalItem.hasClass('active')){

				maxtaCRSWrap.animate({

					'margin-left': 0

				},1000)

				activeItem.removeClass('active')
				maxtaCRSWrap.find('li:nth-child(1)').addClass('active')

				// Syn with pagination
				pageItems.removeClass('active')
				page.find('li:nth-child(1)').addClass('active')

			}else{

				maxtaCRSWrap.animate({

					'margin-left': '-'+(getWidtElem*getIndex)+'px'

				},1000)

				activeItem.removeClass('active')
				maxtaCRSWrap.find('li:nth-child('+(getIndex+1)+')').addClass('active')

				pageItems.removeClass('active')
				page.find('li:nth-child('+(getIndex+1)+')').addClass('active')

			}

		}

		var moveRight = function(){

			var firstItem = maxtaCRSWrap.find('li:nth-child(1)')
			var getIndex = maxtaCRSWrap.find('li.active').index() + 1
			var activeItem = maxtaCRSWrap.find('li.active')

			// Syn with pagination
			var page = maxtaCRS.find('ol')
			var pageItems = page.find('li')

			console.log(getIndex)

			if(firstItem.hasClass('active')){

				maxtaCRSWrap.animate({

					'margin-left': '-'+(getWidtElem*(getNumbItem-1))+'px'

				},1000)

				activeItem.removeClass('active')
				maxtaCRSWrap.find('li:nth-child('+getNumbItem+')').addClass('active')

				// Syn with pagination
				pageItems.removeClass('active')
				page.find('li:nth-child('+getNumbItem+')').addClass('active')

			}else{

				maxtaCRSWrap.animate({

					'margin-left': '-'+(getWidtElem*(getIndex-2))+'px'

				},1000)

				activeItem.removeClass('active')
				maxtaCRSWrap.find('li:nth-child('+(getIndex-1)+')').addClass('active')

				// Syn with pagination
				pageItems.removeClass('active')
				page.find('li:nth-child('+(getIndex-1)+')').addClass('active')

			}

		}

		var active = function(){

			if(settings.ctrlItem == true){

				maxtaCRSWrap.find('li:first-child').addClass('active')

				var nextBtn = maxtaCRS.find('.next-ctrl')
				nextBtn.click(function(){

					moveLeft()

				})

				var prevBtn = maxtaCRS.find('.prev-ctrl')
				prevBtn.click(function(){

					moveRight()

				})

			}else{

				maxtaCRS.find('ctrl-btn').remove()

			}

		}

		var auto = function(){

			if(settings.auto == true){

				setInterval(function(){

					moveLeft()

				},5000)

			}else{

				console.log('autorun was disabled')

			}

		}

		var pageItem = function(){

			if(settings.pageItem == true){

				$('<ol></ol>').appendTo(maxtaCRS)
				for(var i = 0; i < getNumbItem; i++){

					$('<li></li>').appendTo(maxtaCRS.find('ol'))

				}

				var page = maxtaCRS.find('ol')
				var pageItems = page.find('li')
				
				$(document).ready(function(){

					console.log("number item: "+getNumbItem)
					console.log("number ol li:"+pageItems.length)	
					
				})
				page.width(26*pageItems.length)	

				page.find('li:first-child').addClass('active')
				
				pageItems.click(function(){

					var getPageIndex = $(this).index()
					var firstPageItem = page.find('li:first-child')

					var activeItem = maxtaCRSWrap.find('li.active')
					console.log(getPageIndex)

					maxtaCRSWrap.animate({

						'margin-left': '-'+(getWidtElem*getPageIndex)+'px'

					},1000)

					activeItem.removeClass('active')
					maxtaCRSWrap.find('li:nth-child('+(getPageIndex+1)+')').addClass('active')

					pageItems.removeClass('active')
					maxtaCRS.find('ol').find('li:nth-child('+(getPageIndex+1)+')').addClass('active')

					maxtaCRS.parent().siblings('.pareBUL').find('.relaSLD').find('ul li').removeClass('active')
					maxtaCRS.parent().siblings('.pareBUL').find('.relaSLD').find('ul').find('li:nth-child('+(getPageIndex+1)+')').addClass('active')

				})

			}else{

				console.log('disabled pagination')

			}

		}

		var gallery = function(){

			if(settings.gallery == true){

				var getURL = maxtaCRS.parent().siblings('.pareBUL').find('.relaSLD')
				console.log(getURL)
				var pageRelaSLD = getURL.find('ul')
				var itemRelaSLD = getURL.find('li')

				pageRelaSLD.find('li:first-child').addClass('active')

				itemRelaSLD.each(function(){

					$(this).click(function(){

						var activeItemCRS = maxtaCRSWrap.find('li.active')
						var getIndexSelected = $(this).index()

						maxtaCRSWrap.animate({

							'margin-left':'-'+(getWidtElem*getIndexSelected)+'px'

						},500)

						activeItemCRS.removeClass('active')
						maxtaCRSWrap.find('li:nth-child('+(getIndexSelected+1)+')').addClass('active')

						getURL.find('ul li').removeClass('active')
						getURL.find('ul').find('li:nth-child('+(getIndexSelected+1)+')').addClass('active')

						maxtaCRS.find('ol li').removeClass('active')
						maxtaCRS.find('ol').find('li:nth-child('+(getIndexSelected+1)+')').addClass('active')

					})
					

				})

			}else{

				console.log('gallery was disabled')

			}

		}

		var zoomCRS = function(){

			if(settings.zoom == true){

				maxtaCRS.append('<div class="gall-zoom hide-elem"><div class="zoom-wrap"></div><button class="clos-btn"><i class="fa fa-close"></i></button></div>')
				maxtaCRS.closest('body').append('<div class="gall-zoom hide-elem"><div class="bg-dark"></div></div>')
				maxtaCRS.find('ul').clone().appendTo('.zoom-wrap')
				$('<button class="next-ctrl ctrl-btn"><i class="fa fa-angle-right"></i></button><button class="prev-ctrl ctrl-btn"><i class="fa fa-angle-left"></i></button>').appendTo($('.zoom-wrap'))
				$('.zoom-wrap').addClass('maxtaSLD')

				$('.zoom-wrap').maxtaCRS({

					auto:false,
					ctrlItem: true,
					heightCRS: "500",
					pageItem: false

				})

				maxtaCRS.find('.gall-zoom .clos-btn').click(function(){

					$(this).parent().addClass('hide-elem')
					$('body > .gall-zoom').addClass('hide-elem')

				})
				maxtaCRS.find('.zoom-btn').click(function(){

					maxtaCRS.find('.gall-zoom').removeClass('hide-elem')
					$('body > .gall-zoom').removeClass('hide-elem')

				})

			}
			else{

				console.log('zoom galley was disabled')

			}

		}

		var init = function(){

			pageItem()
			active()
			setWidt()
			auto()
			gallery()
			heightCRS()
			zoomCRS()
			
		}

		init()

	}

})(jQuery)