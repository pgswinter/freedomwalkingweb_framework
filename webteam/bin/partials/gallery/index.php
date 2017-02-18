<?php

	// JOIN Gallery and Business Database.
	$sql_join_gallery_busi = "SELECT business_type.name_busi,
								gallery.id_gallery,
								gallery.img_url,
								gallery.big_img_url
							FROM gallery INNER JOIN 
								business_type WHERE 
								business_type.id_busi_type = gallery.id_busi_type";
	$sql_join_gallery_busi_rs = $consql_new->query($sql_join_gallery_busi);

	$sql_join_gallery_busi_rs2 = $consql_new->query($sql_join_gallery_busi);


	echo $consql_new->error;	
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	
	<div class="fw-container">
		<ul class="form-wrap-styl3 list-small-gallery">
			<?php while($row_sql_join_gallery_busi = $sql_join_gallery_busi_rs->fetch_assoc()):?>
				<li class="fw-overview-article3 gallery">
					
					<div class="summ-cont">
						<div class="img-wrap">
							<img src="<?php echo $row_sql_join_gallery_busi['img_url'];?>" alt="">
						</div>
						<div class="form-inli">
							
							<h4 class="col-lg-8"><?php echo $row_sql_join_gallery_busi['name_busi'];?></h34>
						
						</div>
					</div>
				
				</li>
			<?php endwhile;?>
		</ul>
	</div>

	<div class="maxtaSLD fw-gallery list-true-gallery">
		
		<ul>
			<?php while($row_sql_join_gallery_busi2 = $sql_join_gallery_busi_rs2->fetch_assoc()):?>
				<li><img src="<?php echo $row_sql_join_gallery_busi2['big_img_url'];?>" alt=""></li>
			<?php endwhile;?>	
		</ul>
		<button class="next-ctrl ctrl-btn"><i class="fa fa-angle-right"></i></button>
		<button class="prev-ctrl ctrl-btn"><i class="fa fa-angle-left"></i></button>
		<a href="" class="close-btn"></a>
		<div class="dark-bg"></div>

	</div>

</body>
</html>
