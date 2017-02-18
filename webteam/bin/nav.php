<?php

	$top_nav = array(

		"home"=>"Home",
		"blog"=>"Blog",
		"gallery"=>"Gallery",
		"contact"=>"Contact"

	);

	$auth_nav = array(

		"home"=>"Sign Out",
		"register"=>"Register"

	);

	$soci_nav = array(

		"https://www.facebook.com/freedomwalkingshop"=>"../img/facebook.png",
		"https://www.google.com.vn/"=>"../img/google.png",
		"https://twitter.com/?lang=vi"=>"../img/twitter.png",

	);

	$main_nav = array(

		"whoweare"=>"Who we are",
		"achievement"=>"Achievement",
		"ourroad"=>"Our Road",
		"bestteam"=>"Best Team"

	);

	$visu_caro = array(

		"../photos/hero_slider/use/01.jpg"=>"item1",
		"../photos/hero_slider/use/02.jpg"=>"item2",
		"../photos/hero_slider/use/03.jpg"=>"item3",
		"../photos/hero_slider/use/04.jpg"=>"item4",
		"../photos/hero_slider/use/05.jpg"=>"item5",

	);

	$logo_item = array(

		"logo_default"=>"../img/logo.png",
		"logo_1"=>"../img/logo1.png",
		"logo_2"=>"../img/logo2.png",
		"logo_3"=>"../img/logo_w.png",

	);

	if(isset($_GET['page'])){

		$page = $_GET['page'];

	}else{

		$page = 'home';

	}

	$titl_sect = array(

		"slog_1"=>"Freedom inside each of our heart!",
		"slog_2"=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem, officia!",
		"slog_3"=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem, officia!",

	);

	$category_part = array(
		"achivement"=>"our achivement",
		"busi_1"=>"our business",
		"busi_2"=>"our connect",
		"busi_3"=>"our share",
		"blog"=>"our blog",
		"client"=>"our client",
		"gallery"=>"our galley"

	);

	$admin_part = array(

		"insert"=>"insert form",
		"edit"=>"edit form",
		"delete"=>"delete form"

	);
?>