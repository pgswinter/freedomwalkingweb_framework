<?php

	$sql_gallery = "SELECT * from `gallery`";
	$sql_gallery_rs = $consql_new->query($sql_gallery);

	$sql_busi = "SELECT * from `business_type`";
	$sql_busi_rs = $consql_new->query($sql_busi);

	if(isset($_POST['for_insert'])){

		$id_busi_type = $consql_new->real_escape_string($_POST['insr_id_busi']);
		$img_url = $consql_new->real_escape_string($_POST['insr_img_url']);

		$sql_insert_gallery = "INSERT INTO `gallery` (
									`id_busi_type`,
									`img_url`)
							VALUES ('$id_busi_type',
									'$img_url')";

		$consql_new->query($sql_insert_gallery);

		echo $consql_new->error;
	}

	if(isset($_POST['for_update'])){

		$manage_id_gallery = $consql_new->real_escape_string($_POST['manage_id_gallery']);
		$img_url = $consql_new->real_escape_string($_POST['img_url']);

		$sql_update_gallery = "UPDATE `gallery` SET 
												`img_url`='$img_url'
												WHERE 
												`id_gallery`='$manage_id_gallery'";
		$consql_new->query($sql_update_gallery);

		echo $consql_new->error;
		
	}

	if(isset($_POST['for_delete'])){

		$manage_id_gallery = $consql_new->real_escape_string($_POST['manage_id_gallery']);
		$manage_id_busi = $consql_new->real_escape_string($_POST['manage_id_busi']);
		$img_url = $consql_new->real_escape_string($_POST['img_url']);

		$sql_delete_gallery = "DELETE FROM `gallery` WHERE `id_gallery`='$manage_id_gallery'
														AND	`id_busi_type`='$manage_id_busi'";
		$consql_new->query($sql_delete_gallery);

		echo $consql_new->error;

	}
	
?>
<body>
	
			
	<h2>New Gallery</h2>
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
				<label for="">IMG Url</label>
				<input type="text" placeholder="Typing data here ..." name="insr_img_url">
			</div>

			<div class="clear-float">
				<input type="submit" value="+ Add" name="for_insert">
			</div>
			
		</form>
	</article>
	<h2>Update Gallery</h2>
	<?php while($row_gallery = $sql_gallery_rs->fetch_assoc()):?>
		<h3>ID Business Type: <?php echo $row_gallery['id_gallery'];?></h3>
		<article>
			<form action="" method="POST">
				
				<input type="hidden" value="<?php echo $row_gallery['id_gallery'];?>" name="manage_id_gallery">
				<input type="hidden" value="<?php echo $row_gallery['id_busi_type'];?>" name="manage_id_busi">
				<div class="form-inli col-lg-6">
					<label for="">IMG Url</label>
					<input type="text" value="<?php echo $row_gallery['img_url'];?>" name="img_url">
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