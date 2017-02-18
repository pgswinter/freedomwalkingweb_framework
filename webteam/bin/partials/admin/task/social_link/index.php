<?php

	$sql_soci = "SELECT * from `social_link`";
	$sql_soci_rs = $consql_new->query($sql_soci);

	if(isset($_POST['for_insert'])){

		$facebook = $consql_new->real_escape_string($_POST['insr_facebook']);
		$twitter = $consql_new->real_escape_string($_POST['insr_twitter']);
		$youtube = $consql_new->real_escape_string($_POST['insr_youtube']);

		$sql_insert_soci = "INSERT INTO `social_link` (
									`facebook`,
									`twitter`,
									`youtube`)
							VALUES ('$facebook',
									'$twitter',
									'$youtube')";

		$consql_new->query($sql_insert_soci);

		echo $consql_new->error;
	}

	if(isset($_POST['for_update'])){

		$manage_id_link = $consql_new->real_escape_string($_POST['manage_id_link']);
		$facebook = $consql_new->real_escape_string($_POST['facebook']);
		$twitter = $consql_new->real_escape_string($_POST['twitter']);
		$youtube = $consql_new->real_escape_string($_POST['youtube']);

		$sql_update_soci = "UPDATE `social_link` SET 
												`facebook`='$facebook',
												`twitter`='$twitter',
												`youtube`='$youtube'
												WHERE 
												`id_link`='$manage_id_link'";
		$consql_new->query($sql_update_soci);

		echo $consql_new->error;
		
	}

	if(isset($_POST['for_delete'])){

		$manage_id_link = $consql_new->real_escape_string($_POST['manage_id_link']);
		$facebook = $consql_new->real_escape_string($_POST['facebook']);
		$twitter = $consql_new->real_escape_string($_POST['twitter']);
		$youtube = $consql_new->real_escape_string($_POST['youtube']);

		$sql_delete_soci = "DELETE FROM `social_link` WHERE `id_link`='$manage_id_link'";
		$consql_new->query($sql_delete_soci);

		echo $consql_new->error;

	}
	
?>
<body>
	
			
	<h2>New Social Link</h2>
	<article>
		<form action="" method="POST">
			
			<div class="form-inli col-lg-6">
				<label for="">Facebook</label>
				<input type="text" placeholder="Typing data here ..." name="insr_facebook">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Twitter</label>
				<input type="text" placeholder="Typing data here ..." name="insr_twitter">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Youtube</label>
				<input type="text" placeholder="Typing data here ..." name="insr_youtube">
			</div>

			<div class="clear-float">
				<input type="submit" value="+ Add" name="for_insert">
			</div>
			
		</form>
	</article>
	<h2>Update Social Link</h2>
	<?php while($row_soci = $sql_soci_rs->fetch_assoc()):?>
		<h3>ID Social Link: <?php echo $row_soci['id_link'];?></h3>
		<article>
			<form action="" method="POST">
				
				<input type="hidden" value="<?php echo $row_soci['id_link'];?>" name="manage_id_link">
				<div class="form-inli col-lg-6">
					<label for="">Facebook</label>
					<input type="text" value="<?php echo $row_soci['facebook'];?>" name="facebook">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Twitter</label>
					<input type="text" value="<?php echo $row_soci['twitter'];?>" name="twitter">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Youtube</label>
					<input type="text" value="<?php echo $row_soci['youtube'];?>" name="youtube">
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