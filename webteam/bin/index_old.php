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

	<!-- vendor -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!-- Freedom Walking Css -->
	<link rel="stylesheet" href="../dist/css/style.css">
	<link rel="stylesheet" href="../dist/css/common.css">
	<link rel="stylesheet" href="../dist/css/responsive.css">
	<!-- From maxta-ui-kit -->
	<link rel="stylesheet" href="../dist/maxta-ui-kit/carousel/maxta-slider.css">

</head>
<body>
	<div class="container">
		
		<header>
		
			<div class="top-head clear-float set-bord-bott">

				<div class="col-lg-3 clea-padd">
				
					<div class="list-item-btn clear-float">
						
						<ul class="col-lg-12 clea-padd set-high-ligh">
							<?php foreach ($auth_nav as $key => $value):?>
								<li class="col-lg-4 clea-padd set-bala-vert">									
									<a href="./?page=<?php echo $key;?>" <?php if($page == $key):?> class="active" <?php endif;?>><?php echo $value;?></a>
								</li>
							<?php endforeach;?>
						</ul>
					
					</div>
				
				</div>
				
				<div class="col-lg-7 set-righ clea-padd">
					
					<div class="sub-main-nav col-lg-12 clea-padd">
						
						<ul class="col-lg-8 clea-padd set-high-ligh">
							<?php foreach ($top_nav as $key => $value):?>
								<li class="col-lg-3 clea-padd set-bala-vert">
									<a href="./?page=<?php echo $key;?>" <?php if($page == $key):?> class="active"<?php endif;?>><?php echo $value;?></a>
								</li>
							<?php endforeach;?>	
						</ul>
						
						<ul class="col-lg-4 clea-padd">
								
							<?php foreach ($soci_nav as $key => $value):?>
								<li class="col-lg-4 clea-padd set-bala-vert">
									<a href="./?page=<?php echo $value;?>" <?php if($page ==$key):?> class="active"<?php endif;?>>
										<img src="<?php echo $value;?>" alt="">
									</a>
								</li>
							<?php endforeach;?>

						</ul>
				
					</div>
				
				</div>

			</div>
			<!-- End top-head -->
			<div class="fw-head">
				
				<div class="col-lg-3 clea-padd set-padd-top">
					
					<a href="./index.php?>">
						<img src="<?php echo $logo_item['logo_default'];?>" alt="">
					</a>

				</div>

				<div class="col-lg-7 set-righ clea-padd">
					
					<div class="main-nav">
						<ul class="col-lg-12 clea-padd set-bold">
							<?php foreach ($main_nav as $key => $value):?>
								<li class="col-lg-3 clea-padd set-padd-top"> 
									<a href="./?page=<?php echo $key;?>" <?php if($page == $key):?> class="active"<?php endif;?> class="set-uppe fu"><?php echo $value;?></a>
								</li>
							<?php endforeach;?>	
						</ul>
						

					</div>

				</div>

			</div>
			<!-- End fw-head -->
		</header>
		<!-- End header -->

	</div>
	
	<!-- Below is body of content -->

	<div class="main-content">
		
		<?php include('partials/' . $page . '/index.php');?>

	</div>

	<footer>
			
		copyright &copy; 2016 by RB

	</footer>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="../dist/maxta-ui-kit/carousel/maxta-slider.js"></script>
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

	</script>
</body>
</html>