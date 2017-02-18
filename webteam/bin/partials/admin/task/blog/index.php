<?php

	$sql_blog = "SELECT * from `blog`";
	$sql_blog_rs = $consql_new->query($sql_blog);

	$sql_busi = "SELECT * from `business_type`";
	$sql_busi_rs = $consql_new->query($sql_busi);

	$sql_social_link = "SELECT * from `social_link`";
	$sql_social_link_rs = $consql_new->query($sql_social_link);

	if(isset($_POST['for_insert'])){

		$id_busi_type = $consql_new->real_escape_string($_POST['insr_id_busi']);
		$id_link = $consql_new->real_escape_string($_POST['insr_id_link']);
		$title = $consql_new->real_escape_string($_POST['insr_titl']);
		$date = $consql_new->real_escape_string($_POST['insr_date']);
		$like = $consql_new->real_escape_string($_POST['insr_like']);
		$author = $consql_new->real_escape_string($_POST['insr_auth']);
		$img_blog = $consql_new->real_escape_string($_POST['insr_img_blog']);
		$content = $consql_new->real_escape_string($_POST['insr_content']);

		$sql_insert_blog = "INSERT INTO `blog` (
									`title`,
									`date`,
									`like`,
									`comment`,
									`author`,
									`img_blog`,
									`content`,
									`id_busi_type`,
									`id_link`)
							VALUES ('$title',
									'$date',
									'$like',
									'$comment',
									'$author',
									'$img_blog',
									'$content',
									'$id_busi_type',
									'$id_link')";

		$consql_new->query($sql_insert_blog);

		echo $consql_new->error;
	}

	if(isset($_POST['for_update'])){

		$manage_id_blog = $consql_new->real_escape_string($_POST['manage_id_blog']);
		$title = $consql_new->real_escape_string($_POST['titl']);
		$date = $consql_new->real_escape_string($_POST['date']);
		$like = $consql_new->real_escape_string($_POST['like']);
		$author = $consql_new->real_escape_string($_POST['auth']);
		$img_blog = $consql_new->real_escape_string($_POST['img_blog']);
		$content = $consql_new->real_escape_string($_POST['content']);

		$sql_update_blog = "UPDATE `blog` SET 
												`title`='$title',
												`date`='$date',
												`like`='$like',
												`comment`='$comment',
												`author`='$author',
												`img_blog`='$img_blog',
												`content`='$content'
												WHERE 
												`id_blog`='$manage_id_blog'";
		$consql_new->query($sql_update_blog);

		echo $consql_new->error;
		
	}

	if(isset($_POST['for_delete'])){

		$manage_id_blog = $consql_new->real_escape_string($_POST['manage_id_blog']);
		$manage_id_busi_type = $consql_new->real_escape_string($_POST['manage_id_busi_type']);
		$manage_id_link = $consql_new->real_escape_string($_POST['manage_id_link']);

		$sql_delete_blog = "DELETE FROM `blog` WHERE `id_blog`='$manage_id_blog' 
														AND `id_busi_type`='$manage_id_busi_type'
														AND `id_link`='$manage_id_link'";
		$consql_new->query($sql_delete_blog);

		echo $consql_new->error;

	}
	
?>
<body>
	
			
	<h2>New Article for Blog</h2>
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
				<label for="">Get ID Link</label>
				<select>
					<?php while($row_social_link = $sql_social_link_rs->fetch_assoc()):?>
						<option value="<?php echo $row_social_link['id_link'];?>"><?php echo $row_social_link['id_link'];?></option>
					<?php endwhile;?>
				</select>
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Render ID Social Link</label>
				<input type="text" placeholder="Typing data here ..." name="insr_id_link">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Title</label>
				<input type="text" placeholder="Typing data here ..." name="insr_titl">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Date</label>
				<input type="text" placeholder="Typing data here ..." name="insr_date">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Like</label>
				<input type="text" placeholder="Typing data here ..." name="insr_like">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Author</label>
				<input type="text" placeholder="Typing data here ..." name="insr_auth">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">IMG Url</label>
				<input type="text" placeholder="Typing data here ..." name="insr_img_blog">
			</div>
			<div class="form-inli col-lg-12">
				<label for="">Content</label>
				<textarea id="froala-editor" name="insr_content"></textarea>
				<br/>
			</div>

			<div class="clear-float">
				<input type="submit" value="+ Add" name="for_insert">
			</div>

			
		</form>
	</article>
	<h2>Update Blog</h2>
	<?php while($row_blog = $sql_blog_rs->fetch_assoc()):?>
		<h3>ID Blog: <?php echo $row_blog['id_blog'];?></h3>
		<article>
			<form action="" method="POST">
				
				<input type="hidden" value="<?php echo $row_blog['id_blog'];?>" name="manage_id_blog">
				<input type="hidden" value="<?php echo $row_blog['id_busi_type'];?>" name="manage_id_busi_type">
				<input type="hidden" value="<?php echo $row_blog['id_link'];?>" name="manage_id_link">
				<div class="form-inli col-lg-6">
					<label for="">Title</label>
					<input type="text" value="<?php echo $row_blog['title'];?>" name="titl">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Date Finished</label>
					<input type="text" value="<?php echo $row_blog['date'];?>" name="date">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Date Started</label>
					<input type="text" value="<?php echo $row_blog['like'];?>" name="like">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Author</label>
					<input type="text" value="<?php echo $row_blog['author'];?>" name="auth">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">IMG Url</label>
					<input type="text" value="<?php echo $row_blog['img_blog'];?>" name="img_blog">
				</div>
				<div class="form-inli col-lg-12">
					<label for="">Content</label>
					<textarea class="froala-editor-update" name="content"><?php echo $row_blog['content'];?></textarea>
					
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