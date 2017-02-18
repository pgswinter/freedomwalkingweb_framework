<?php
	
	$table_name_admin = array(

		"achivement"=>"Achivement",
		"blog"=>"Blog",
		"business_type"=>"Business Type",
		"career"=>"Career",
		"client"=>"Client",
		"gallery"=>"Gallery",
		"member_team"=>"Member Team",
		"social_link"=>"Social Link",
		"team"=>"Team",
		"user"=>"User"

	);
	$table_name_leader = array(

		"blog"=>"Blog",
		"career"=>"Career",
		"gallery"=>"Gallery",
		"member_team"=>"Member Team",
		"team"=>"Team"

	);
	$table_name_member = array(

		"blog"=>"Blog",
		"member_team"=>"Member Team",

	);
	$table_name_block = array(

		"achivement"=>"Achivement",
		"business_type"=>"Business Type",
		"client"=>"Client",
		"social_link"=>"Social Link",

	);

	if(isset($_GET['admin_page'])){

		$admin_page = $_GET['admin_page'];

	}else{

		$admin_page = 'blog';

	}

?>