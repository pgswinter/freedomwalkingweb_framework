<?php

	$sql_achi = "SELECT * from `achievement`";
	$sql_achi_rs = $consql_new->query($sql_achi);

	$sql_busi = "SELECT * from `business_type`";
	$sql_busi_rs = $consql_new->query($sql_busi);

	$sql_team = "SELECT * from `team`";
	$sql_team_rs = $consql_new->query($sql_team);

	$sql_member_team = "SELECT * from `member_team`";
	$sql_member_team_rs = $consql_new->query($sql_member_team);

	if(isset($_POST['for_insert'])){

		$id_busi_type = $consql_new->real_escape_string($_POST['insr_id_busi']);
		$id_person = $consql_new->real_escape_string($_POST['insr_id_person']);
		$id_achi = $consql_new->real_escape_string($_POST['insr_id_achi']);

		$name_team = $consql_new->real_escape_string($_POST['insr_name_team']);
		$member_number = $consql_new->real_escape_string($_POST['insr_member_number']);
		$available = $consql_new->real_escape_string($_POST['insr_available']);

		$sql_insert_team = "INSERT INTO `team` (
									`name_team`,
									`member_number`,
									`available`,
									`id_achi`,
									`id_busi_type`,
									`id_person`)
							VALUES ('$name_team',
									'$member_number',
									'$available',
									'$id_achi',
									'$id_busi_type',
									'$id_person')";

		$consql_new->query($sql_insert_team);

		echo $consql_new->error;
	}

	if(isset($_POST['for_update'])){

		$manage_id_team = $consql_new->real_escape_string($_POST['manage_id_team']);

		$name_team = $consql_new->real_escape_string($_POST['name_team']);
		$member_number = $consql_new->real_escape_string($_POST['member_number']);
		$available = $consql_new->real_escape_string($_POST['available']);

		$sql_update_team = "UPDATE `team` SET 
												`name_team`='$name_team',
												`member_number`='$member_number',
												`available`='$available'
												WHERE 
												`id_team`='$manage_id_team'";
		$consql_new->query($sql_update_team);

		echo $consql_new->error;
		
	}

	if(isset($_POST['for_delete'])){

		$manage_id_achi = $consql_new->real_escape_string($_POST['manage_id_achi']);
		$manage_id_busi_type = $consql_new->real_escape_string($_POST['manage_id_busi_type']);
		$manage_id_person = $consql_new->real_escape_string($_POST['manage_id_person']);
		$manage_id_team = $consql_new->real_escape_string($_POST['manage_id_team']);

		$sql_delete_team = "DELETE FROM `team` WHERE `id_team`='$manage_id_team' 
														AND `id_busi_type`='$manage_id_busi_type'
														AND `id_achi`='$manage_id_achi'
														AND `id_person`='$manage_id_person'";
		$consql_new->query($sql_delete_team);

		echo $consql_new->error;

	}
	
?>
<body>
	
			
	<h2>New Team</h2>
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
				<label for="">Get ID Member Team</label>
				<select>
					<?php while($row_person = $sql_member_team_rs->fetch_assoc()):?>
						<option value="<?php echo $row_person['id_person'];?>"><?php echo $row_person['id_person'];?></option>
					<?php endwhile;?>
				</select>
			</div>
			<div class="form-inli col-lg-6">
				<label for="">ID Member Team render</label>
				<input type="text" placeholder="Typing data here ..." name="insr_id_person">
			</div>
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
				<label for="">Name Team</label>
				<input type="text" placeholder="Typing data here ..." name="insr_name_team">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Member Number</label>
				<input type="text" placeholder="Typing data here ..." name="insr_member_number">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Available</label>
				<input type="text" placeholder="Typing data here ..." name="insr_available">
			</div>

			<div class="clear-float">
				<input type="submit" value="+ Add" name="for_insert">
			</div>

			
		</form>
	</article>
	<h2>Update Team</h2>
	<?php while($row_team = $sql_team_rs->fetch_assoc()):?>
		<h3>ID Team: <?php echo $row_team['id_team'];?></h3>
		<article>
			<form action="" method="POST">
				
				<input type="hidden" value="<?php echo $row_team['id_achi'];?>" name="manage_id_achi">
				<input type="hidden" value="<?php echo $row_team['id_busi_type'];?>" name="manage_id_busi_type">
				<input type="hidden" value="<?php echo $row_team['id_person'];?>" name="manage_id_person">
				<input type="hidden" value="<?php echo $row_team['id_team'];?>" name="manage_id_team">

				<div class="form-inli col-lg-6">
					<label for="">Name Team</label>
					<input type="text" value="<?php echo $row_team['name_team'];?>" name="name_team">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Member Number</label>
					<input type="text" value="<?php echo $row_team['member_number'];?>" name="member_number">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Available</label>
					<input type="text" value="<?php echo $row_team['available'];?>" name="available">
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