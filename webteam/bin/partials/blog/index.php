<?php

	// JOIN Blog and Business Database.
	$sql_join_blog_busi = "SELECT business_type.name_busi,
								blog.id_blog,
								blog.title,
								blog.date,
								blog.like,
								blog.author,
								blog.img_blog,
								blog.content
							FROM blog INNER JOIN 
								business_type WHERE 
								business_type.id_busi_type = blog.id_busi_type";
	$sql_join_blog_busi_rs = $consql_new->query($sql_join_blog_busi);

	// JOIN Blog and social_link with ID achivement was got
	$sql_join_blog_soci = "SELECT social_link.facebook,
									social_link.twitter,
									social_link.youtube
									FROM blog INNER JOIN social_link
									WHERE social_link.id_link = blog.id_link";
									
	$sql_join_blog_soci_rs = $consql_new->query($sql_join_blog_soci);

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
		<ul class="form-wrap-styl3">
			<?php while($row_sql_join_blog_busi = $sql_join_blog_busi_rs->fetch_assoc()):?>

				<li class="fw-overview-article3">
					
					<div class="summ-cont">
						<div class="img-wrap">
							<img src="<?php echo $row_sql_join_blog_busi['img_blog'];?>" alt="">
						</div>
						<div class="form-inli">
							
							<h4 class="col-lg-8"><?php echo $row_sql_join_blog_busi['title'];?></h34>
							<h4 class="col-lg-4 right"><?php echo $row_sql_join_blog_busi['date'];?></h4>
						
						</div>
						<div class="form-inli">
							
							<h5 class="col-lg-6">by <?php echo $row_sql_join_blog_busi['author'];?></h5>
							<h5 class="col-lg-6 right"><?php echo $row_sql_join_blog_busi['name_busi'];?></h5>
						
						</div>
			
						<a class="rnd-btn" href="./?page=detail_blog&id=<?php echo $row_sql_join_blog_busi['id_blog'];?>" class="bord-btn">view more</a>
						
					</div>
				
				</li>
				
			<?php endwhile;?>
		</ul>
	</div>
	

</body>
</html>
