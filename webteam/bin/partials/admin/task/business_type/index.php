<?php

	$sql_busi = "SELECT * from `business_type`";
	$sql_busi_rs = $consql_new->query($sql_busi);

	if(isset($_POST['for_insert'])){

		$name_busi = $consql_new->real_escape_string($_POST['insr_nm_bs']);
		$description = $consql_new->real_escape_string($_POST['insr_desc']);
		$icon = $consql_new->real_escape_string($_POST['insr_icon']);

		$sql_insert_busi = "INSERT INTO `business_type` (
									`name_busi`,
									`description`,
									`icon`)
							VALUES ('$name_busi',
									'$description',
									'$icon')";

		$consql_new->query($sql_insert_busi);

		echo $consql_new->error;
	}

	if(isset($_POST['for_update'])){

		$manage_id_busi = $consql_new->real_escape_string($_POST['manage_id_busi']);
		$name_busi = $consql_new->real_escape_string($_POST['nm_bs']);
		$description = $consql_new->real_escape_string($_POST['desc']);
		$icon = $consql_new->real_escape_string($_POST['icon']);

		$sql_update_busi = "UPDATE `business_type` SET 
												`name_busi`='$name_busi',
												`description`='$description',
												`icon`='$icon'
												WHERE 
												`id_busi_type`='$manage_id_busi'";
		$consql_new->query($sql_update_busi);

		echo $consql_new->error;
		
	}

	if(isset($_POST['for_delete'])){

		$manage_id_busi = $consql_new->real_escape_string($_POST['manage_id_busi']);
		$name_busi = $consql_new->real_escape_string($_POST['nm_bs']);
		$description = $consql_new->real_escape_string($_POST['desc']);
		$icon = $consql_new->real_escape_string($_POST['icon']);

		$sql_delete_busi = "DELETE FROM `business_type` WHERE `id_busi_type`='$manage_id_busi'";
		$consql_new->query($sql_delete_busi);

		echo $consql_new->error;

	}
	
?>
<body>
	
			
	<h2>New Business Type</h2>
	<article>
		<form action="" method="POST">
			
			<div class="form-inli col-lg-6">
				<label for="">Name Business</label>
				<input type="text" placeholder="Typing data here ..." name="insr_nm_bs">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Description</label>
				<input type="text" placeholder="Typing data here ..." name="insr_desc">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Icon</label>
				<input type="text" placeholder="Typing data here ..." name="insr_icon">
			</div>

			<div class="clear-float">
				<input type="submit" value="+ Add" name="for_insert">
			</div>
			
		</form>
	</article>
	<h2>Update Business Type</h2>
	<?php while($row_busi_type = $sql_busi_rs->fetch_assoc()):?>
		<h3>ID Business Type: <?php echo $row_busi_type['id_busi_type'];?></h3>
		<article>
			<form action="" method="POST">
				
				<input type="hidden" value="<?php echo $row_busi_type['id_busi_type'];?>" name="manage_id_busi">
				<div class="form-inli col-lg-6">
					<label for="">Name Business</label>
					<input type="text" value="<?php echo $row_busi_type['name_busi'];?>" name="nm_bs">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Description</label>
					<input type="text" value="<?php echo $row_busi_type['description'];?>" name="desc">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Icon</label>
					<input type="text" value="<?php echo $row_busi_type['icon'];?>" name="icon">
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