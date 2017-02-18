(function($){

	$.fn.closeIMG = function(){

		var me = $(this)
		me.hide()
		$('.close-btn',me).click(function(e){

			e.preventDefault()
			me.css({'display':'none'})

		})

	}
	$('.list-small-gallery li').each(function(){

		$(this).click(function(){

			var indexIMG = $(this).index()
			console.log(indexIMG)
			var widthItem = $('.list-true-gallery > ul > li').width()
			console.log(widthItem)
			$('.list-true-gallery').show()
			$('> ul',$('.list-true-gallery')).animate({

				'margin-left': '-'+(widthItem*indexIMG)+'px'

			},1000)

		})

	})

})(jQuery)