<?php include('conndb.php');?>
<?php include('nav.php');?>
<?php 
	
	if(!array($page, array_keys($top_nav))){

		header('HTTP/1.0 404 Not Found');
		$page = 'error';

	}
	if(!array($page, array_keys($auth_nav))){

		header('HTTP/1.0 404 Not Found');
		$page = 'error';

	}
	if(!array($page, array_keys($soci_nav))){

		header('HTTP/1.0 404 Not Found');
		$page = 'error';

	}
	if(!array($page, array_keys($main_nav))){

		header('HTTP/1.0 404 Not Found');
		$page = 'error';

	}

	// get data from blog
	$sql_blog = "SELECT * FROM `blog`";
	$sql_blog_rs = $consql_new->query($sql_blog);
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	
	<!-- Freedom Walking Font -->
	<link rel="stylesheet" href="../font/NuevaStd-Bold/font.css">
	<link rel="stylesheet" href="../font/NuevaStd-BoldCond/font.css">
	<link rel="stylesheet" href="../font/NuevaStd-Cond/font.css">
	<link rel="stylesheet" href="../font/NuevaStd-Italic/font.css">

	<link rel="stylesheet" href="../font/HelveticaNeueLTPro-Lt/font.css">
	<link rel="stylesheet" href="../font/HelveticaNeueLTPro-Roman/font.css">	
	<link rel="stylesheet" href="../font/HelveticaNeueLTPro-BlkCn/font.css">

	<!-- vendor -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!-- From css fw-kit -->
	<link rel="stylesheet" href="../dist/css/fw-top-nav.css">
	<link rel="stylesheet" href="../dist/css/fw-main-nav.css">
	<link rel="stylesheet" href="../dist/css/fw-business-item.css">
	<link rel="stylesheet" href="../dist/css/fw-client.css">
	<link rel="stylesheet" href="../dist/css/fw-contact.css">
	<link rel="stylesheet" href="../dist/css/fw-detail-article.css">
	<link rel="stylesheet" href="../dist/css/fw-footer.css">
	<link rel="stylesheet" href="../dist/css/fw-hero-image.css">
	<link rel="stylesheet" href="../dist/css/fw-overview-article-style1.css">
	<link rel="stylesheet" href="../dist/css/fw-overview-article-style2.css">
	<link rel="stylesheet" href="../dist/css/fw-overview-article-style3.css">
	<link rel="stylesheet" href="../dist/css/fw-product.css">
	<link rel="stylesheet" href="../dist/css/fw-relative-article.css">
	<link rel="stylesheet" href="../dist/css/fw-team-item.css">
	<link rel="stylesheet" href="../dist/css/fw-three-columns.css">
	<link rel="stylesheet" href="../dist/css/fw-two-columns.css">
	<link rel="stylesheet" href="../dist/css/fw-signin.css">
	<link rel="stylesheet" href="../dist/css/fw-gallery.css">
	<link rel="stylesheet" href="../dist/css/fw-view-comment.css">
	<link rel="stylesheet" href="../dist/css/fw-task-done.css">

	<!-- Responsive CSS -->
	<link rel="stylesheet" href="../dist/css/responsive.css">
	<!-- From maxta-ui-kit -->
	<link rel="stylesheet" href="../dist/maxta-ui-kit/carousel/maxta-slider.css">

</head>
<body>
	
	<div class="fw-container">
		
		<!--  Top navigation -->
		<div class="fw-top-nav">

			<div class="col-lg-3">
			
				<div class="admn-list">
					
					<ul class="col-lg-12">
						<li class="col-lg-4">									
							<a href="partials/admin/signin/index.php">Sign In</a>
						</li>
					</ul>
				
				</div>
			
			</div>
			
			<div class="col-lg-6 right">

				<ul class="col-lg-8">
					<?php foreach($top_nav as $key => $value):?>
						<li class="col-lg-3">
							<a href="./?page=<?php echo $key;?>" <?php if($page == $key):?>class="active"<?php endif;?>><?php echo $value;?></a>
						</li>
					<?php endforeach; ?>
				</ul>
				
				<div class="soci-list">
					<ul class="col-lg-4">
						<?php foreach($soci_nav as $key => $value):?>	
							<li>
								<a href="">
									<img src="<?php echo $value?>" alt="">
								</a>
							</li>
						<?php endforeach;?>
					</ul>
				</div>
			
			</div>

		</div>
		<!-- End top navigation -->

	</div>

	<!-- Below is body of content -->

	<div class="main-content">

		<!-- End main navigation -->
		<div class="fw-main-nav col-lg-3 logo">
			
			<a href="./?page=<?php echo $top_nav['home'];?>">
				<img src="<?php echo $logo_item['logo_default'];?>" alt="">
			</a>

		</div>
		<!-- End main navigation -->
		<?php include('partials/' . $page . '/index.php');?>

	</div>
	
	<footer class="fw-footer">

		<div class="fw-container">
			<div class="col-lg-12 top-foot">
				<div class="col-lg-1">
					<a href="./?page=<?php echo $top_nav['home']?>"><img src="<?php echo $logo_item['logo_3'];?>" alt=""></a>
				</div>
				<div class="col-lg-4 right">
					
					<ul>
						<li><span>9999</span> views</li>
						<li><span>9999</span> jobs were posted</li>
					</ul>
			
				</div>
			</div>
			<div class="col-lg-12">
				<div class="col-lg-3">
					
					<h4 class="fw-titl-01">Follow us</h4>
					<ul class="clea-padd soci-list">
						<?php foreach($soci_nav as $key => $value):?>
							<li>
								<a href="">
									<img src="<?php echo $value;?>" alt="">
								</a>
							</li>
						<?php endforeach;?>
					</ul>
			
				</div>
				<div class="col-lg-3 center">
					
					<div class="center-top">
						<h4 class="">Join with us</h4>
						<a href="partials/admin/?admin_page=achivement" class="rnd-btn">Register now</a>
						<ul class="to-list">
							<li><a href="">Who we are</a></li>
							<li><a href="">Achievement</a></li>
							<li><a href="">Our road</a></li>
							<li><a href="">Best team</a></li>
						</ul>
					</div>
					<h4 class="fw-titl-01">Feedback email for us</h4>
					<input type="email" placeholder="Typing your email... ">
					<input type="submit" value="Subcribe" class="rnd-btn">
			
				</div>
				<div class="col-lg-6 right fix-height">
					
					<h4 class="fw-titl-01">Lastest jobs</h4>
					<?php while($row_blog = $sql_blog_rs->fetch_assoc()):?>
						<article>
							
							<div class="col-lg-4">
								<img src="<?php echo $row_blog['img_blog'];?>" alt="">
							</div>
							<div class="col-lg-7 summ-arti">
								<h4>
									<a href="./?page=detail_blog&id=<?php echo $row_blog['id_blog'];?>">
										<?php echo $row_blog['title'];?>
									</a>
								</h4>
								<p><?php echo $row_blog['content'];?></p>
							</div>
				
						</article>
					<?php endwhile;?>
			
				</div>
			</div>
			<div class="col-lg-12">
				<p class="">Copyright &copy; 2016 by Freedomwalking. All right reserved.</p>
			</div>
		</div>

	</footer>
	<a href="" class="on-top"><i class="fa fa-angle-up"></i></a>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="../dist/maxta-ui-kit/carousel/maxta-slider.js"></script>
	<script src="../dist/maxta-ui-kit/gallery/fw-gallery-zoom.js"></script>
	<script src="../dist/maxta-ui-kit/navscroll/navscroll.js"></script>
	<script src="../dist/maxta-ui-kit/clickscroll/fw-clickscroll.js"></script>
	<script>

		$('.fw-wall').maxtaCRS({

			ctrlItem: true,
			pageItem: true,
			auto: false,

		})

		$('.fw-caro-arti').maxtaCRS({

			ctrlItem: false,
			pageItem: false,
			auto: true,

		})

		$('.form-wrap-client').maxtaCRS({

			ctrlItem: true,
			pageItem: false,
			auto: false,

		})

		$('.fw-gallery').maxtaCRS({

			ctrlItem: true,
			pageItem: false,
			auto: false,

		})

		$('.fw-gallery').closeIMG()

		$('.fw-main-nav').navscroll()

		$('.on-top').clickScroll({

			dest: $('.fw-top-nav')

		})	
		$('.fw-main-nav > ul > li:nth-child(1) > a').clickScroll({

			dest: $('#who-we-are')

		})
		$('.fw-main-nav > ul > li:nth-child(2) > a').clickScroll({

			dest: $('#achivement')

		})
		$('.fw-main-nav > ul > li:nth-child(3) > a').clickScroll({

			dest: $('#our-road')

		})
		$('.fw-main-nav > ul > li:nth-child(4) > a').clickScroll({

			dest: $('#best-team')

		})
	</script>

</body>
</html>