<?php

	// Get from index. Session username
	$login_user_id = $row['id'];

	$sql_member_team = "SELECT * from `member_team`";
	$sql_member_team_rs = $consql_new->query($sql_member_team);

	$sql_member_team_id = "SELECT * from `member_team` where `id`='$login_user_id'";
	$sql_member_team_id_rs = $consql_new->query($sql_member_team_id);

	$sql_team = "SELECT * from `team`";
	$sql_team_rs = $consql_new->query($sql_team);
	$sql_team_rs1 = $consql_new->query($sql_team);

	$sql_career = "SELECT * from `career`";
	$sql_career_rs = $consql_new->query($sql_career);

	if(isset($_POST['for_insert'])){

		$id_team = $consql_new->real_escape_string($_POST['insr_id_team']);
		$id_career = $consql_new->real_escape_string($_POST['insr_id_career']);
		$name_member = $consql_new->real_escape_string($_POST['insr_nm_mb']);
		$img_member = $consql_new->real_escape_string($_POST['insr_img_mb']);
		$experience = $consql_new->real_escape_string($_POST['insr_exp']);
		$desc_yourself = $consql_new->real_escape_string($_POST['insr_desc_yours']);

		$sql_insert_name_member = "INSERT INTO `member_team` (
									`name_member`,
									`img_member`,
									`experience`,
									`desc_yourself`,
									`id_team`,
									`id_career`)
							VALUES ('$name_member',
									'$img_member',
									'$experience',
									'$desc_yourself',
									'$id_team',
									'$id_career')";

		$consql_new->query($sql_insert_name_member);

		echo $consql_new->error;
	}

	if(isset($_POST['for_update'])){

		$manage_id_person = $consql_new->real_escape_string($_POST['manage_id_person']);
		$name_member = $consql_new->real_escape_string($_POST['name_member']);
		$img_member = $consql_new->real_escape_string($_POST['img_member']);
		$experience = $consql_new->real_escape_string($_POST['experience']);
		$desc_yourself = $consql_new->real_escape_string($_POST['desc_yours']);

		$sql_update_name_member = "UPDATE `member_team` SET 
												`name_member`='$name_member',
												`img_member`='$img_member',
												`experience`='$experience',
												`desc_yourself`='$desc_yourself'
												WHERE 
												`id_person`='$manage_id_person'";
		$consql_new->query($sql_update_name_member);

		echo $consql_new->error;
		
	}

	if(isset($_POST['for_delete'])){

		$manage_id_person = $consql_new->real_escape_string($_POST['manage_id_person']);
		$manage_id_team = $consql_new->real_escape_string($_POST['manage_id_team']);
		$manage_id_career = $consql_new->real_escape_string($_POST['manage_id_career']);

		$sql_delete_name_member = "DELETE FROM `member_team` WHERE `id_person`='$manage_id_person'
														and `id_team`='$manage_id_team'
														and `id_career`='$manage_id_career'";
		$consql_new->query($sql_delete_name_member);

		echo $consql_new->error;

	}
	
	if(isset($_POST['for_update_id'])){

		$manage_id_person = $consql_new->real_escape_string($_POST['manage_id_person_id']);
		$name_member = $consql_new->real_escape_string($_POST['name_member_id']);
		$img_member = $consql_new->real_escape_string($_POST['img_member_id']);
		$experience = $consql_new->real_escape_string($_POST['experience_id']);
		$desc_yourself = $consql_new->real_escape_string($_POST['desc_yours_id']);

		$sql_update_name_member_id = "UPDATE `member_team` SET 
												`name_member`='$name_member',
												`img_member`='$img_member',
												`experience`='$experience',
												`desc_yourself`='$desc_yourself'
												WHERE 
												`id_person`= '$manage_id_person'";
		$consql_new->query($sql_update_name_member_id);

		echo $consql_new->error;
		header("location: ?admin_page=member_team");
		
	}
?>
<body>
	
	<?php if($row['priority'] != 5):?>			
		<h2>New Member Team</h2>
		<article>
			
				<form action="" method="POST">
					
					
					<div class="form-inli col-lg-6">
						<label for="">Get ID Team</label>
						<select id="name_team_slct" name="name_team_slct">
							<?php while($row_team = $sql_team_rs->fetch_assoc()):?>
								<option value="<?php echo $row_team['id_team'];?>"><?php echo $row_team['name_team'];?></option>
							<?php endwhile;?>
						</select>
					</div>
					<div class="form-inli col-lg-6">
						<label for="">Get ID Team render</label>
						<input type="text" placeholder="Typing data here ..." name="insr_id_team"  class="name_team_render">
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
						<label for="">Name Member</label>
						<input type="text" placeholder="Typing data here ..." name="insr_nm_mb">
					</div>
					<div class="form-inli col-lg-6">
						<label for="">IMG Member</label>
						<input type="text" placeholder="Typing data here ..." name="insr_img_mb">
					</div>
					<div class="form-inli col-lg-6">
						<label for="">Experience</label>
						<input type="text" placeholder="Typing data here ..." name="insr_exp">
					</div>
					<div class="form-inli col-lg-12">
						<label for="">Description Yourself</label>
						<textarea id="froala-editor" name="insr_desc_yours"></textarea>
						<br/>
					</div>

					<div class="clear-float">
						<input type="submit" value="+ Add" name="for_insert">
					</div>
					
					
				</form>
			
		</article>
	<?php endif;?>

	<!-- Update based on priority -->
	<!-- PRIORITY ADMIN -->
	<?php if($row['priority'] == 1 || $row['priority'] == 2):?>
		<h2>Update Member Team</h2>
		<?php while($row_member_team = $sql_member_team_rs->fetch_assoc()):?>
			<h3>ID Member: <?php echo $row_member_team['id_person'];?></h3>
			<article>
				<form action="" method="POST">
					
					<input type="hidden" value="<?php echo $row_member_team['id_person'];?>" name="manage_id_person">
					<input type="hidden" value="<?php echo $row_member_team['id_team'];?>" name="manage_id_team">
					<input type="hidden" value="<?php echo $row_member_team['id_career'];?>" name="manage_id_career">
					<div class="form-inli col-lg-6">
						<label for="">Name Member</label>
						<input type="text" value="<?php echo $row_member_team['name_member'];?>" name="name_member">
					</div>
					<div class="form-inli col-lg-6">
						<label for="">IMG Member</label>
						<input type="text" value="<?php echo $row_member_team['img_member'];?>" name="img_member">
					</div>
					<div class="form-inli col-lg-6">
						<label for="">Experience</label>
						<input type="text" value="<?php echo $row_member_team['experience'];?>" name="experience">
					</div>
					<div class="form-inli col-lg-12">
						<label for="">Content</label>
						<textarea class="froala-editor-update" name="desc_yours"><?php echo $row_member_team['desc_yourself'];?></textarea>
						
					</div>

					<div class="clear-float">
						<input type="submit" value="Update" name="for_update">
						<input type="submit" value="Delete" name="for_delete">
					</div>
				</form>
			</article>
		<?php endwhile;?>
	<!-- PRIORITY USER -->
	<?php elseif($row['priority'] == 5):?>
		<h2>Update Member Team</h2>
		<?php while($row_member_team_id = $sql_member_team_id_rs->fetch_assoc()):?>
			<h3>ID Member: <?php echo $row_member_team_id['id_person'];?></h3>
			<article>
				<form action="" method="POST">
					
					<input type="hidden" value="<?php echo $row_member_team_id['id_person'];?>" name="manage_id_person_id">
					<input type="hidden" value="<?php echo $row_member_team_id['id_team'];?>" name="manage_id_team_id">
					<input type="hidden" value="<?php echo $row_member_team_id['id_career'];?>" name="manage_id_career_id">
					<div class="form-inli col-lg-6">
						<label for="">Name Member</label>
						<input type="text" value="<?php echo $row_member_team_id['name_member'];?>" name="name_member_id">
					</div>
					<div class="form-inli col-lg-6">
						<label for="">IMG Member</label>
						<input type="text" value="<?php echo $row_member_team_id['img_member'];?>" name="img_member_id">
					</div>
					<div class="form-inli col-lg-6">
						<label for="">Experience</label>
						<input type="text" value="<?php echo $row_member_team_id['experience'];?>" name="experience_id">
					</div>
					<div class="form-inli col-lg-12">
						<label for="">Content</label>
						<textarea class="froala-editor-update" name="desc_yours_id"><?php echo $row_member_team_id['desc_yourself'];?></textarea>
						
					</div>

					<div class="clear-float">
						<input type="submit" value="Update" name="for_update_id">
					</div>
				</form>
			</article>
		<?php endwhile;?>
	<?php endif;?>
</body>
</html>