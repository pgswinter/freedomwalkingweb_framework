<?php
	
	// Check user who logged by SESSION

	// session_start();

	// $user_check = $_SESSION['login_user'];
	// $sql_check_user = "SELECT username from user where username = '$user_check'";
	// $sql_check_user_rs = $consql_new->query($sql_check_user);

	// $row = $sql_check_user_rs->fetch_assoc();
	// $login_session = $row['username'];
	// if(!isset($login_session)){

	// 	header('Location: ..\signin\index.php');

	// }

	// Operation database

	$sql_achi = "SELECT * from `achievement`";
	$sql_achi_rs = $consql_new->query($sql_achi);

	$sql_busi = "SELECT * from `business_type`";
	$sql_busi_rs = $consql_new->query($sql_busi);

	$sql_team = "SELECT * from `team`";
	$sql_team_rs = $consql_new->query($sql_team);

	$sql_client = "SELECT * from `client`";
	$sql_client_rs = $consql_new->query($sql_client);

	$sql_gallery = "SELECT * from `gallery`";
	$sql_gallery_rs = $consql_new->query($sql_gallery);

	$sql_career = "SELECT * from `career`";
	$sql_career_rs = $consql_new->query($sql_career);

	if(isset($_POST['for_insert'])){

		$id_busi_type = $consql_new->real_escape_string($_POST['insr_id_busi']);
		$id_client = $consql_new->real_escape_string($_POST['insr_id_client']);
		$id_team = $consql_new->real_escape_string($_POST['insr_id_team']);
		$id_gallery = $consql_new->real_escape_string($_POST['insr_id_gallery']);
		$id_career = $consql_new->real_escape_string($_POST['insr_id_career']);
		$name_project = $consql_new->real_escape_string($_POST['insr_nm_pj']);
		$date_started = $consql_new->real_escape_string($_POST['insr_date_st']);
		$date_finished = $consql_new->real_escape_string($_POST['insr_date_fn']);
		$comment = $consql_new->real_escape_string($_POST['insr_comm']);
		$description = $consql_new->real_escape_string($_POST['insr_desc']);
		$img_url = $consql_new->real_escape_string($_POST['insr_img_url']);

		$sql_insert_achi = "INSERT INTO `achievement` (
									`name_project`,
									`date_started`,
									`date_finished`,
									`comment`,
									`description`,
									`img_url`,
									`id_busi_type`,
									`id_client`,
									`id_team`,
									`id_gallery`,
									`id_career`)
							VALUES ('$name_project',
									'$date_started',
									'$date_finished',
									'$comment',
									'$description',
									'$img_url',
									'$id_busi_type',
									'$id_client',
									'$id_team',
									'$id_gallery',
									'$id_career')";

		$consql_new->query($sql_insert_achi);

		echo $consql_new->error;
	}

	if(isset($_POST['for_update'])){

		$manage_id_achi = $consql_new->real_escape_string($_POST['manage_id_achi']);
		$name_project = $consql_new->real_escape_string($_POST['nm_pj']);
		$date_started = $consql_new->real_escape_string($_POST['date_st']);
		$date_finished = $consql_new->real_escape_string($_POST['date_fn']);
		$comment = $consql_new->real_escape_string($_POST['comm']);
		$description = $consql_new->real_escape_string($_POST['desc']);
		$img_url = $consql_new->real_escape_string($_POST['img_url']);

		$sql_update_achi = "UPDATE `achievement` SET 
												`name_project`='$name_project',
												`date_started`='$date_started',
												`date_finished`='$date_finished',
												`comment`='$comment',
												`description`='$description',
												`img_url`='$img_url' 
												WHERE 
												`id_achi`='$manage_id_achi'";
		$consql_new->query($sql_update_achi);

		echo $consql_new->error;
		
	}

	if(isset($_POST['for_delete'])){

		$manage_id_achi = $consql_new->real_escape_string($_POST['manage_id_achi']);
		$manage_id_busi_type = $consql_new->real_escape_string($_POST['manage_id_busi_type']);
		$manage_id_client = $consql_new->real_escape_string($_POST['manage_id_client']);
		$manage_id_team = $consql_new->real_escape_string($_POST['manage_id_team']);
		$manage_id_gallery = $consql_new->real_escape_string($_POST['manage_id_gallery']);
		$manage_id_career = $consql_new->real_escape_string($_POST['manage_id_career']);

		$sql_delete_achi = "DELETE FROM `achievement` WHERE `id_achi`='$manage_id_achi' 
														AND `id_busi_type`='$manage_id_busi_type'
														and `id_client`='$manage_id_client'
														and `id_team`='$manage_id_team'
														and `id_gallery`='$manage_id_gallery'
														and `id_career`='$manage_id_career'";
		$consql_new->query($sql_delete_achi);

		echo $consql_new->error;

	}
	
?>
<body>
	
	<!-- <label for="" class="rnd-btn user-check">Hello, <?php echo $_SESSION['login_user'];?>!</label>		
	<h2>New Achivement</h2>
	
	<a href="../admin/signout/index.php" class="rnd-btn sign-out-btn">Sign out</a> -->
	<article>
		<form action="" method="POST">
			
			<div class="form-inli col-lg-6">
				<label for="">Get ID BusiType</label>
				<select>
					<?php while($row_busi = $sql_busi_rs->fetch_assoc()):?>
						<option value="<?php echo $row_busi['id_busi_type'];?>"><?php echo $row_busi['id_busi_type'];?></option>
					<?php endwhile;?>
				</select>
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Get ID BusiType render</label>
				<input type="text" placeholder="Typing data here ..." name="insr_id_busi">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Get ID Team</label>
				<select>
					<?php while($row_team = $sql_team_rs->fetch_assoc()):?>
						<option value="<?php echo $row_team['id_team'];?>"><?php echo $row_team['id_team'];?></option>
					<?php endwhile;?>
				</select>
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Get ID Team render</label>
				<input type="text" placeholder="Typing data here ..." name="insr_id_team">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Get ID Client</label>
				<select>
					<?php while($row_client = $sql_client_rs->fetch_assoc()):?>
						<option value="<?php echo $row_client['id_client'];?>"><?php echo $row_client['id_client'];?></option>
					<?php endwhile;?>
				</select>
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Get ID Client render</label>
				<input type="text" placeholder="Typing data here ..." name="insr_id_client">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Get ID Gallery</label>
				<select>
					<?php while($row_gallery = $sql_gallery_rs->fetch_assoc()):?>
						<option value="<?php echo $row_gallery['id_gallery'];?>"><?php echo $row_gallery['id_gallery'];?></option>
					<?php endwhile;?>
				</select>
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Get ID Gallery render</label>
				<input type="text" placeholder="Typing data here ..." name="insr_id_gallery">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Get ID Career</label>
				<select>
					<?php while($row_career = $sql_career_rs->fetch_assoc()):?>
						<option value="<?php echo $row_career['id_career'];?>"><?php echo $row_career['id_career'];?></option>
					<?php endwhile;?>
				</select>
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Get ID Career render</label>
				<input type="text" placeholder="Typing data here ..." name="insr_id_career">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Name Project</label>
				<input type="text" placeholder="Typing data here ..." name="insr_nm_pj">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Date Finished</label>
				<input type="text" placeholder="Typing data here ..." name="insr_date_fn">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Date Started</label>
				<input type="text" placeholder="Typing data here ..." name="insr_date_st">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Comment</label>
				<input type="text" placeholder="Typing data here ..." name="insr_comm">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Description</label>
				<input type="text" placeholder="Typing data here ..." name="insr_desc">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">IMG Url</label>
				<input type="text" placeholder="Typing data here ..." name="insr_img_url">
			</div>

			<input type="submit" value="+ Add" name="for_insert">

			
		</form>
	</article>
	<h2>Update Achivement</h2>
	<?php while($row_achi = $sql_achi_rs->fetch_assoc()):?>
		<h3>ID Project: <?php echo $row_achi['id_achi'];?></h3>
		<article>
			<form action="" method="POST">
				
				<input type="hidden" value="<?php echo $row_achi['id_achi'];?>" name="manage_id_achi">
				<input type="hidden" value="<?php echo $row_achi['id_busi_type'];?>" name="manage_id_busi_type">
				<input type="hidden" value="<?php echo $row_achi['id_client'];?>" name="manage_id_client">
				<input type="hidden" value="<?php echo $row_achi['id_team'];?>" name="manage_id_team">
				<input type="hidden" value="<?php echo $row_achi['id_gallery'];?>" name="manage_id_gallery">
				<input type="hidden" value="<?php echo $row_achi['id_career'];?>" name="manage_id_career">
				<div class="form-inli col-lg-6">
					<label for="">Name Project</label>
					<input type="text" value="<?php echo $row_achi['name_project'];?>" name="nm_pj">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Date Finished</label>
					<input type="text" value="<?php echo $row_achi['date_finished'];?>" name="date_fn">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Date Started</label>
					<input type="text" value="<?php echo $row_achi['date_started'];?>" name="date_st">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Comment</label>
					<input type="text" value="<?php echo $row_achi['comment'];?>" name="comm">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Description</label>
					<input type="text" value="<?php echo $row_achi['description'];?>" name="desc">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">IMG Url</label>
					<input type="text" value="<?php echo $row_achi['img_url'];?>" name="img_url">
				</div>

				<input type="submit" value="Update" name="for_update">
				<input type="submit" value="Delete" name="for_delete">
			</form>
		</article>
	<?php endwhile;?>	


</body>
</html>