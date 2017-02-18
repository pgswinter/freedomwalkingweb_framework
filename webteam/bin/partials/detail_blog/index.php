<?php
	
	$id_blog = $_GET['id'];

	// Join business and blog
	$sql_blog = "SELECT business_type.name_busi,
						blog.id_blog,
						blog.content,
						blog.title,
						blog.date,
						blog.like,
						blog.author,
						blog.img_blog 
						from business_type join blog 
						where business_type.id_busi_type = blog.id_busi_type";
	$sql_blog_rs = $consql_new->query($sql_blog);

	// Join business and blog with ID blog was got
	$sql_join_busi_blog = "SELECT business_type.name_busi,
								  blog.title,
								  blog.content,
								  blog.date,
								  blog.like,
								  blog.author,
								  blog.img_blog
								  from business_type join blog 
								  where business_type.id_busi_type = blog.id_busi_type AND blog.id_blog = $id_blog";
	$sql_join_busi_blog_rs = $consql_new->query($sql_join_busi_blog);

	$sql_commnet_blog = "SELECT * from comment_blog where id_blog = $id_blog";
	$sql_commnet_blog_rs = $consql_new->query($sql_commnet_blog);

	// Insert blog
	if(isset($_POST['for_insert'])){

		$comment = $consql_new->real_escape_string($_POST['insr_comm']);

		$sql_insert_comment_blog = "INSERT INTO `comment_blog` (`id_blog`,`comment`) VALUES ('$id_blog', '$comment')";
		$consql_new->query($sql_insert_comment_blog);

		echo $consql_new->error;
		header('Location: ?page=detail_blog&id='. $id_blog . '');
	}

	$consql_new->error;	
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	
	<div class="fw-container">
		<div class="col-lg-9">
			<?php while($row_join_busi_blog = $sql_join_busi_blog_rs->fetch_assoc()):?>
				<div class="fw-detail-article">
				
					<h3><a href=""><?php echo $row_join_busi_blog['title'];?></a></h3>
					<div class="form-inli col-lg-2">
						
						<label for="" class="col-lg-12">By: </label>
						<p class="col-lg-12"><?php echo $row_join_busi_blog['author'];?></p>

					</div>
					<div class="form-inli col-lg-2">
						
						<label for="" class="col-lg-12">From: </label>
						<p class="col-lg-12"><?php echo $row_join_busi_blog['name_busi'];?></p>

					</div>
					
					<div class="form-inli col-lg-2">
						
						<label for="" class="col-lg-12">Published: </label>
						<p class="col-lg-12"><?php echo $row_join_busi_blog['date'];?></p>

					</div>
					<div class="form-inli col-lg-2">
						
						<label for="" class="col-lg-12">Like</label>
						<p class="col-lg-12"><?php echo $row_join_busi_blog['like'];?></p>

					</div>
					<div class="form-inli col-lg-2 end">
						
						<label for="" class="col-lg-12">Comment</label>
						<p class="col-lg-12"><i class="fa fa-comment"></i></p>

					</div>
					<img src="<?php echo $row_join_busi_blog['img_blog'];?>" alt="" class="prst-img">
					
					<div class="summ-cont">
						
						<?php echo $row_join_busi_blog['content'];?>

					</div>
					<h4>Comment</h4>
					<form action="" method="POST">
						<textarea name="insr_comm" id="" cols="30" rows="10" placeholder="Typing your ideals about this article ..."></textarea>
						<input type="submit" value="Send" name="for_insert">
					</form>
					
				</div>
			<?php endwhile;?>
			
			<div class="fw-view-comment">
				<h4>Show all responsed:</h4>
				<ul>
					<?php while($row_comment_blog = $sql_commnet_blog_rs->fetch_assoc()):?>
						<li><?php echo $row_comment_blog['comment'];?></li>
					<?php endwhile;?>
				</ul>

			</div>
		</div>
		<div class="fw-relative-wrap col-lg-3">
			<h3 class="titl-helv">Relatived News</h3>
			<?php while($row_sql_blog_rs = $sql_blog_rs->fetch_assoc()):?>
				<div class="fw-relative-article">
					
					<img src="<?php echo $row_sql_blog_rs['img_blog'];?>" alt="" class="prst-img">
					<h4><a href="./?page=detail_blog&id=<?php echo $row_sql_blog_rs['id_blog'];?>">Lorem ipsum dolor sit amet, adipisici e. Dolorum, cupiditate.</a></h4>
					<div class="form-inli col-lg-4 first">
						
						<label for="" class="col-lg-12">From: </label>
						<p class="col-lg-12"><?php echo $row_sql_blog_rs['name_busi'];?></p>

					</div>
					
					<div class="form-inli col-lg-4">
						
						<label for="" class="col-lg-12">Published: </label>
						<p class="col-lg-12"><?php echo $row_sql_blog_rs['date'];?></p>

					</div>
					<div class="form-inli col-lg-4 last">
						
						<label for="" class="col-lg-12">Like</label>
						<p class="col-lg-12"><?php echo $row_sql_blog_rs['like'];?></p>

					</div>

				</div>
			<?php endwhile;?>
		</div>
	</div>
	

</body>
</html>
