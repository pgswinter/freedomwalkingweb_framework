<?php

	$sql_career = "SELECT * from `career`";
	$sql_career_rs = $consql_new->query($sql_career);

	$sql_busi = "SELECT * from `business_type`";
	$sql_busi_rs = $consql_new->query($sql_busi);

	if(isset($_POST['for_insert'])){

		$id_busi_type = $consql_new->real_escape_string($_POST['insr_id_busi']);
		$name_career = $consql_new->real_escape_string($_POST['insr_name_career']);
		$language_programming = $consql_new->real_escape_string($_POST['insr_language_programming']);
		$tool = $consql_new->real_escape_string($_POST['insr_tool']);
		$soft_skill = $consql_new->real_escape_string($_POST['insr_soft_skill']);
		$processing = $consql_new->real_escape_string($_POST['insr_processing']);
		$library = $consql_new->real_escape_string($_POST['insr_library']);
		$framework = $consql_new->real_escape_string($_POST['insr_framework']);
		$platform = $consql_new->real_escape_string($_POST['insr_platform']);

		$sql_insert_career = "INSERT INTO `career` (
									`name_career`,
									`language_programming`,
									`tool`,
									`soft_skill`,
									`processing`,
									`library`,
									`framework`,
									`platform`,
									`id_busi_type`)
							VALUES ('$name_career',
									'$language_programming',
									'$tool',
									'$soft_skill',
									'$processing',
									'$library',
									'$framework',
									'$platform',
									'$id_busi_type')";

		$consql_new->query($sql_insert_career);

		echo $consql_new->error;
	}

	if(isset($_POST['for_update'])){

		$manage_id_career = $consql_new->real_escape_string($_POST['manage_id_career']);
		$manage_id_busi_type = $consql_new->real_escape_string($_POST['manage_id_busi_type']);
		$name_career = $consql_new->real_escape_string($_POST['name_career']);
		$language_programming = $consql_new->real_escape_string($_POST['language_programming']);
		$tool = $consql_new->real_escape_string($_POST['tool']);
		$soft_skill = $consql_new->real_escape_string($_POST['soft_skill']);
		$processing = $consql_new->real_escape_string($_POST['processing']);
		$library = $consql_new->real_escape_string($_POST['library']);
		$framework = $consql_new->real_escape_string($_POST['framework']);
		$platform = $consql_new->real_escape_string($_POST['platform']);

		$sql_update_career = "UPDATE `career` SET 
												`name_career`='$name_career',
												`language_programming`='$language_programming',
												`tool`='$tool',
												`soft_skill`='$soft_skill',
												`processing`='$processing',
												`library`='$library',
												`framework`='$framework',
												`platform`='$platform'
												WHERE 
												`id_career`='$manage_id_career'";
		$consql_new->query($sql_update_career);

		echo $consql_new->error;
		
	}

	if(isset($_POST['for_delete'])){

		$manage_id_career = $consql_new->real_escape_string($_POST['manage_id_career']);
		$manage_id_busi_type = $consql_new->real_escape_string($_POST['manage_id_busi_type']);

		$sql_delete_career = "DELETE FROM `career` WHERE `id_career`='$manage_id_career' 
														AND `id_career`='$manage_id_career'
														AND `id_busi_type`='$manage_id_busi_type'";
		$consql_new->query($sql_delete_career);

		echo $consql_new->error;

	}
	
?>
<body>
	
			
	<h2>New Career</h2>
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
				<label for="">Render ID BusiType </label>
				<input type="text" placeholder="Typing data here ..." name="insr_id_busi">
			</div>
			
			<div class="form-inli col-lg-6">
				<label for="">Name Career</label>
				<input type="text" placeholder="Typing data here ..." name="insr_name_career">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Language Programming</label>
				<input type="text" placeholder="Typing data here ..." name="insr_language_programming">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Tool</label>
				<input type="text" placeholder="Typing data here ..." name="insr_tool">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Soft Skill</label>
				<input type="text" placeholder="Typing data here ..." name="insr_soft_skill">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Processing</label>
				<input type="text" placeholder="Typing data here ..." name="insr_processing">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Library</label>
				<input type="text" placeholder="Typing data here ..." name="insr_library">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Framework</label>
				<input type="text" placeholder="Typing data here ..." name="insr_framework">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Platform</label>
				<input type="text" placeholder="Typing data here ..." name="insr_platform">
			</div>

			<div class="clear-float">
				<input type="submit" value="+ Add" name="for_insert">
			</div>
			
		</form>
	</article>
	<h2>Update Career</h2>
	<?php while($row_career = $sql_career_rs->fetch_assoc()):?>
		<h3>ID Career: <?php echo $row_career['id_career'];?></h3>
		<article>
			<form action="" method="POST">
				
				<input type="hidden" value="<?php echo $row_career['id_career'];?>" name="manage_id_career">
				<input type="hidden" value="<?php echo $row_career['id_busi_type'];?>" name="manage_id_busi_type">
				<div class="form-inli col-lg-6">
					<label for="">Name Career</label>
					<input type="text" value="<?php echo $row_career['name_career'];?>" name="name_career">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Language Programming</label>
					<input type="text" value="<?php echo $row_career['language_programming'];?>" name="language_programming">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Tool</label>
					<input type="text" value="<?php echo $row_career['tool'];?>" name="tool">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Soft Skill</label>
					<input type="text" value="<?php echo $row_career['soft_skill'];?>" name="soft_skill">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Processing</label>
					<input type="text" value="<?php echo $row_career['processing'];?>" name="processing">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Library</label>
					<input type="text" value="<?php echo $row_career['library'];?>" name="library">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Framework</label>
					<input type="text" value="<?php echo $row_career['framework'];?>" name="framework">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Platform</label>
					<input type="text" value="<?php echo $row_career['platform'];?>" name="platform">
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