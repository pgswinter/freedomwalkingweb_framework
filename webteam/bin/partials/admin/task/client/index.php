<?php

	$sql_achi = "SELECT * from `achievement`";
	$sql_achi_rs = $consql_new->query($sql_achi);

	$sql_busi = "SELECT * from `business_type`";
	$sql_busi_rs = $consql_new->query($sql_busi);

	$sql_team = "SELECT * from `team`";
	$sql_team_rs = $consql_new->query($sql_team);

	$sql_client = "SELECT * from `client`";
	$sql_client_rs = $consql_new->query($sql_client);

	if(isset($_POST['for_insert'])){

		$id_busi_type = $consql_new->real_escape_string($_POST['insr_id_busi']);
		$id_team = $consql_new->real_escape_string($_POST['insr_id_team']);
		$id_achi = $consql_new->real_escape_string($_POST['insr_id_achi']);
		$name_company = $consql_new->real_escape_string($_POST['insr_nm_cp']);
		$name_presentation_person = $consql_new->real_escape_string($_POST['insr_nm_pres_pers']);
		$name_position_person = $consql_new->real_escape_string($_POST['insr_nm_posi_pers']);
		$feed_back = $consql_new->real_escape_string($_POST['insr_feed_back']);
		$img_url = $consql_new->real_escape_string($_POST['insr_img_url']);

		$sql_insert_client = "INSERT INTO `client` (
									`name_company`,
									`name_presentation_person`,
									`name_position_person`,
									`feed_back`,
									`img_url`,
									`id_busi_type`,
									`id_achi`,
									`id_team`)
							VALUES ('$name_company',
									'$name_presentation_person',
									'$name_position_person',
									'$feed_back',
									'$img_url',
									'$id_busi_type',
									'$id_achi',
									'$id_team')";

		$consql_new->query($sql_insert_client);

		echo $consql_new->error;
	}

	if(isset($_POST['for_update'])){

		$manage_id_client = $consql_new->real_escape_string($_POST['manage_id_client']);
		$name_company = $consql_new->real_escape_string($_POST['nm_cp']);
		$name_presentation_person = $consql_new->real_escape_string($_POST['nm_pres_pers']);
		$name_position_person = $consql_new->real_escape_string($_POST['nm_posi_pers']);
		$feed_back = $consql_new->real_escape_string($_POST['feed_back']);
		$img_url = $consql_new->real_escape_string($_POST['img_url']);

		$sql_update_client = "UPDATE `client` SET 
												`name_company`='$name_company',
												`name_presentation_person`='$name_presentation_person',
												`name_position_person`='$name_position_person',
												`feed_back`='$feed_back',
												`img_url`='$img_url' 
												WHERE 
												`id_client`='$manage_id_client'";
		$consql_new->query($sql_update_client);

		echo $consql_new->error;
		
	}

	if(isset($_POST['for_delete'])){

		$manage_id_achi = $consql_new->real_escape_string($_POST['manage_id_achi']);
		$manage_id_busi_type = $consql_new->real_escape_string($_POST['manage_id_busi_type']);
		$manage_id_client = $consql_new->real_escape_string($_POST['manage_id_client']);
		$manage_id_team = $consql_new->real_escape_string($_POST['manage_id_team']);

		$sql_delete_client = "DELETE FROM `client` WHERE `id_client`='$manage_id_client'
														AND `id_busi_type`='$manage_id_busi_type'
														and `id_achi`='$manage_id_achi'
														and `id_team`='$manage_id_team'";
		$consql_new->query($sql_delete_client);

		echo $consql_new->error;

	}
	
?>
<body>
	
			
	<h2>New Client</h2>
	<article>
		<form action="" method="POST">
			
			<div class="form-inli col-lg-6">
				<label for="">Get ID Achivement</label>
				<select>
					<?php while($row_achi = $sql_achi_rs->fetch_assoc()):?>
						<option value="<?php echo $row_achi['id_achi'];?>"><?php echo $row_achi['id_achi'];?></option>
					<?php endwhile;?>
				</select>
			</div>
			<div class="form-inli col-lg-6">
				<label for="">ID Achivement render</label>
				<input type="text" placeholder="Typing data here ..." name="insr_id_achi">
			</div>
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
				<label for="">Name Company</label>
				<input type="text" placeholder="Typing data here ..." name="insr_nm_cp">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Name Presentation Person</label>
				<input type="text" placeholder="Typing data here ..." name="insr_nm_pres_pers">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Name Position Person</label>
				<input type="text" placeholder="Typing data here ..." name="insr_nm_posi_pers">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Feed back</label>
				<input type="text" placeholder="Typing data here ..." name="insr_feed_back">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">IMG Url</label>
				<input type="text" placeholder="Typing data here ..." name="insr_img_url">
			</div>

			<div class="clear-float">
				<input type="submit" value="+ Add" name="for_insert">
			</div>

			
		</form>
	</article>
	<h2>Update Client</h2>
	<?php while($row_client = $sql_client_rs->fetch_assoc()):?>
		<h3>ID Client: <?php echo $row_client['id_client'];?></h3>
		<article>
			<form action="" method="POST">
				
				<input type="hidden" value="<?php echo $row_client['id_achi'];?>" name="manage_id_achi">
				<input type="hidden" value="<?php echo $row_client['id_busi_type'];?>" name="manage_id_busi_type">
				<input type="hidden" value="<?php echo $row_client['id_client'];?>" name="manage_id_client">
				<input type="hidden" value="<?php echo $row_client['id_team'];?>" name="manage_id_team">
				<div class="form-inli col-lg-6">
					<label for="">Name Company</label>
					<input type="text" value="<?php echo $row_client['name_company'];?>" name="nm_cp">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Name Presentation Person</label>
					<input type="text" value="<?php echo $row_client['name_presentation_person'];?>" name="nm_pres_pers">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Name Position Person</label>
					<input type="text" value="<?php echo $row_client['name_position_person'];?>" name="nm_posi_pers">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Feed back</label>
					<input type="text" value="<?php echo $row_client['feed_back'];?>" name="feed_back">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">IMG Url</label>
					<input type="text" value="<?php echo $row_client['img_url'];?>" name="img_url">
				</div>

				<div class="clear-float">
					<input type="submit" value="Update" name="for_update">
					<input type="submit" value="Delete" name="for_delete">
				</div>
			</form>
		</article>
	<?php endwhile;?>	


</body>
</html>