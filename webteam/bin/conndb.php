<?php

	$consql = mysqli_connect('localhost','root','');
	$consql->select_db('teamdb');

	$consql_new = mysqli_connect('localhost','root','');
	$consql_new->select_db('freedomwalkingteam');

?>