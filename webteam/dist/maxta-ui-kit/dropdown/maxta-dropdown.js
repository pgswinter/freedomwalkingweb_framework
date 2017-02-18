(function($){

	$.fn.maxtaDRD = function(){

		var me = $(this)
		var valueBar = me.find('.bar')

		me.find('.bar, .expa-btn').click(function(){

			me.find('.list-item').toggleClass('hide-elem')

		})

		me.find('.list-item').each(function(){

			$(this).find('li:first-child .item-wrap').clone().prependTo(valueBar)

			$(this).find('li').click(function(){
				
				valueBar.find('.item-wrap').remove()
				$(this).find('.item-wrap').clone().prependTo(valueBar)
				$(this).parent().toggleClass('hide-elem')

			})

		})

	}

})(jQuery)

