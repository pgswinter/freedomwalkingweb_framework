
<?php
	// fixing old
	$sql_select_achi = "SELECT * FROM `achievement_detail`";
	$select_result_achi = $consql->query($sql_select_achi);
	// end fixing old

	// Type of Achievement
	$sql_select_achi_type = "SELECT * FROM `type_achi`";
	$select_result_achi_type = $consql->query($sql_select_achi_type);

	// Article of Each type Achievement
	$sql_select_achi_arti_1 = "SELECT * FROM `arti_type_achi` where `id_type_achi` = 1";
	$select_result_achi_arti_1 = $consql->query($sql_select_achi_arti_1);

	$sql_select_achi_arti_2 = "SELECT * FROM `arti_type_achi` where `id_type_achi` = 2";
	$select_result_achi_arti_2 = $consql->query($sql_select_achi_arti_2);

	$sql_select_achi_arti_3 = "SELECT * FROM `arti_type_achi` where `id_type_achi` = 3";
	$select_result_achi_arti_3 = $consql->query($sql_select_achi_arti_3);

	$sql_select_achi_arti_4 = "SELECT * FROM `arti_type_achi` where `id_type_achi` = 4";
	$select_result_achi_arti_4 = $consql->query($sql_select_achi_arti_4);
	
	// IMG of Each type Achievement
	$sql_select_achi_img_1 = "SELECT * FROM `img_type_achi` where `id_type_achi` = 1";
	$select_result_achi_img_1 = $consql->query($sql_select_achi_img_1);

	$sql_select_achi_img_2 = "SELECT * FROM `img_type_achi` where `id_type_achi` = 2";
	$select_result_achi_img_2 = $consql->query($sql_select_achi_img_2);

	$sql_select_achi_img_3 = "SELECT * FROM `img_type_achi` where `id_type_achi` = 3";
	$select_result_achi_img_3 = $consql->query($sql_select_achi_img_3);

	$sql_select_achi_img_4 = "SELECT * FROM `img_type_achi` where `id_type_achi` = 4";
	$select_result_achi_img_4 = $consql->query($sql_select_achi_img_4);
	
	$sql_select_busi = "SELECT * FROM `business_detail`";
	$select_result_busi = $consql->query($sql_select_busi);

	$sql_select_blog = "SELECT * FROM `blog`";
	$select_result_blog = $consql->query($sql_select_blog);

	$sql_select_part = "SELECT * FROM `partner`";
	$select_result_part = $consql->query($sql_select_part);

	$sql_select_gall = "SELECT * FROM `gallery`";
	$select_result_gall = $consql->query($sql_select_gall);

	echo $consql->error;

?>
<div class="body-content">

	<div class="fw-container">
			
		<div class="fw-wall maxtaSLD">

			<ul>
				<?php foreach ($visu_caro as $key => $value):?>
					<li><a href="#"><img src="<?php echo $key;?>" alt=""></a></li>
				<?php endforeach;?>
			</ul>
			<button class="next-ctrl ctrl-btn"><i class="fa fa-angle-right"></i></button>
			<button class="prev-ctrl ctrl-btn"><i class="fa fa-angle-left"></i></button>

		</div>

		<div class="fw-arti">
			
			
		
		</div>
		
		<section class="our-slog">
			
			<div class="text-cent-wrap set-bala-vert">
				
				<h2 class="set-uppe set-cent-txt">
					<?php 
						echo $titl_sect["slog_1"];
					?>
				</h2>
		
			</div>
		
		</section>
		<section class="our-achi">
			<h3 class="fw-titl-01"><?php echo $category_part['achivement']?></h3>
			<div class="arti-styl-geo">
				
				<?php while($row_achi = $select_result_achi->fetch_assoc()):?>	
					<article class="clear-float set-bala-vert set-rela">
						
						<div class="col-lg-5 clea-padd">
							
							<div class="col-lg-12 clea-padd">
								<div class="img-wrap">
									<img src="<?php echo $row_achi['img_achi']?>" alt="">
								</div>
							</div>
						</div>
						<div class="col-lg-6 clea-padd set-righ">
							<p><?php echo $row_achi['description'];?></p>
							<h4><?php echo $row_achi['client'];?></h4>
							<a href="./?page=detail_achi&id=<?php echo $row_achi['id_achi'];?>" class="more-btn">view more</a>
									
							<a href=""></a>
						</div>
						<aside class="set-abso corn-bott clear-float">
							
							<div class="bord-styl col-lg-6 clea-padd">
								<h3><?php echo $row_achi['type_achi'];?></h3>
							</div>
							<div class="fw-caro-arti maxtaSLD col-lg-6 clea-padd">
								<ul>
									<?php if($row_achi['type_achi'] == 'Web Design'):?>

										<?php while($row_achi_img_1 = $select_result_achi_img_1->fetch_assoc()):?>
											<li><img src="<?php echo $row_achi_img_1['img_link_achi']?>" alt=""></li>
										<?php endwhile;?>

									<?php endif;?>
									<?php if($row_achi['type_achi'] == 'Game Development'):?>

										<?php while($row_achi_img_2 = $select_result_achi_img_2->fetch_assoc()):?>
											<li><img src="<?php echo $row_achi_img_2['img_link_achi']?>" alt=""></li>
										<?php endwhile;?>

									<?php endif;?>
									<?php if($row_achi['type_achi'] == 'Translator Language'):?>

										<?php while($row_achi_img_3 = $select_result_achi_img_3->fetch_assoc()):?>
											<li><img src="<?php echo $row_achi_img_3['img_link_achi']?>" alt=""></li>
										<?php endwhile;?>

									<?php endif;?>
									
								</ul>
							</div>

						</aside>
					</article>
				<?php endwhile; ?>
			</div>
		
		</section>
		<section class="our-road">
			
			<div class="vert-caro">
				<ul>
					<li>
						<h2><?php echo $category_part['busi_1'];?></h2>
						<?php while($row_busi = $select_result_busi->fetch_assoc()):?>
						<div class="over-styl-geo">
		
							<div class="arti-styl-geo">
								
								<article>
									
									<h4><?php echo $row_busi['type_business'];?></h4>
									<h4><?php echo $row_busi['price'];?></h4>
									<p><?php echo $row_busi['description'];?></p>
									<p>Full-time: <?php echo $row_busi['full_time'];?></p>
									<p>Maintenance: <?php echo $row_busi['maintenance'];?></p>
		
								</article>
		
							</div>
		
						</div>
						<?php endwhile; ?>
					</li>
					<li>
						<h2><?php echo $category_part['busi_2'];?></h2>
						<div class="over-styl-geo">
							
							<h3>connect</h3>
		
							<div class="arti-styl-geo">
								
								<article>
									
									<h4>business_detail - type_business</h4>
									<h4>business_detail - price</h4>
									<p>business_detail - description</p>
									<p>business_detail - full-time</p>
									<p>business_detail - maintenance</p>
		
								</article>
		
							</div>
		
						</div>
		
					</li>
					<li>
						<h2><?php echo $category_part['busi_3'];?></h2>
						<div class="over-styl-geo">
							
							<h3>share</h3>
		
							<div class="arti-styl-geo">
								
								<article>
									
									<h4>business_detail - type_business</h4>
									<h4>business_detail - price</h4>
									<p>business_detail - description</p>
									<p>business_detail - full-time</p>
									<p>business_detail - maintenance</p>
		
								</article>
		
							</div>
		
						</div>
		
					</li>
				</ul>
			</div>
		
		</section>
		<section class="our-blog">
			
			<div class="arti-styl-geo">
		
				<h2><?php echo $category_part['blog'];?></h2>
				
				<?php while($row_blog = $select_result_blog->fetch_assoc()):?>
					<article>
						
						<h3><?php echo $row_blog['title'];?>b</h3>
						<span><?php echo $row_blog['date'];?></span>
						<span><?php echo $row_blog['author'];?></span>
						<img src="<?php echo $row_blog['img'];?>" alt="">
						<h4><?php echo $row_blog['description'];?></h4>
						<ul>
							<li><a href="<?php echo $row_blog['fb_link'];?>"></a></li>
							<li><a href="<?php echo $row_blog['tw_link'];?>"></a></li>
							<li><a href="<?php echo $row_blog['youtu_link'];?>"></a></li>
						</ul>
						<a href="./?page=detail_blog&id=<?php echo $row_blog['id'];?>" class="more-btn">view more</a>
		
					</article>
				<?php endwhile;?>
			</div>
		
		</section>
		<section class="our-clie">
		
			<h2><?php echo $category_part['client'];?></h2>
		
			<div class="arti-styl-geo">
				<?php while($row_part = $select_result_part->fetch_assoc()):?>	
					<article>
						
						<h4><?php echo $row_part["name"];?></h4>
						<p><?php echo $row_part["feedback"];?></p>
						<h3><?php echo $row_part["from_company"];?></h3>
		
					</article>
				<?php endwhile;?>
			</div>
		
		</section>
		<section class="our-gall">
		
			<h2><?php echo $category_part['gallery'];?></h2>
			
			<div class="left-layo">
				
				<ul>
					<?php while($row_gall = $select_result_gall->fetch_assoc()):?>
						<li><a href="#"><img src="<?php echo $row_gall['link_photo_sm'];?>" alt=""></a></li>
					<?php endwhile;?>
				</ul>
		
			</div>
			<div class="right-layo">
				
				<ul>
					<?php while($row_gall = $select_result_gall->fetch_assoc()):?>
						<li><a href="#"><img src="<?php echo $row_gall['link_photo_lg'];?>" alt=""></a></li>
					<?php endwhile;?>
				</ul>
		
			</div>
		
		</section>
	</div>

</div>