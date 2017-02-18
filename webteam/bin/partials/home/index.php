<?php
	
	// Business Type Database 1 
	$sql_busi_type = "SELECT * FROM `business_type`";
	$sql_busi_type_rs = $consql_new->query($sql_busi_type);

	// Business Type Database 2
	$sql_busi_type_1 = "SELECT * FROM `business_type`";
	$sql_busi_type_rs_1 = $consql_new->query($sql_busi_type_1);

	// JOIN Achivement and Business Database. Sorry, I confused, I should use JOIN instead of INNER. But I will can not change it right now. Later, huh : )
	$sql_inner_busi_achi = "SELECT business_type.name_busi, achievement.id_achi, achievement.name_project, achievement.date_finished, achievement.date_started, achievement.description, achievement.img_url FROM business_type INNER JOIN achievement WHERE business_type.id_busi_type=achievement.id_busi_type";
	$sql_inner_busi_achi_rs = $consql_new->query($sql_inner_busi_achi);

	// JOIN Team and Business Database
	$sql_inner_busi_team = "SELECT business_type.name_busi, team.id_team, team.name_team, team.member_number, team.available FROM business_type INNER JOIN team WHERE business_type.id_busi_type=team.id_busi_type";
	$sql_inner_busi_team_rs = $consql_new->query($sql_inner_busi_team);

	// JOIN Client and Business Database
	$sql_inner_busi_client = "SELECT business_type.name_busi, client.name_company, client.name_presentation_person, client.name_position_person, client.feed_back, client.img_url FROM business_type INNER JOIN client WHERE business_type.id_busi_type=client.id_busi_type";
	$sql_inner_busi_client_rs = $consql_new->query($sql_inner_busi_client);

	echo $consql_new->error;

?>
<div class="fw-main-nav col-lg-7 right">

	<ul class="col-lg-12">
		<?php foreach($main_nav as $key => $value):?>
			<li class="col-lg-3">
				<a href="" <?php if($page == $value):?>class="active"<?php endif;?>><?php echo $value;?></a>
			</li>
		<?php endforeach;?>
	</ul>

</div>
<div class="clear"></div>
<div class="fw-wall maxtaSLD">

	<ul>
		<?php foreach ($visu_caro as $key => $value):?>
			<li><a href="#"><img src="<?php echo $key;?>" alt=""></a></li>
		<?php endforeach;?>
	</ul>
	<button class="next-ctrl ctrl-btn"><i class="fa fa-angle-right"></i></button>
	<button class="prev-ctrl ctrl-btn"><i class="fa fa-angle-left"></i></button>

</div>
<div class="fw-two-columns" id="who-we-are">

	<div class="fw-container">

		<div class="col-lg-6 left">
			
			<h2><?php echo $main_nav['whoweare'];?></h2>
			<p>We are a studio. The passion and attractive which promote us to made creative digital products. That will made office's work become to easier, more inspiration and improve performance. </p>
			<p>We are professional</p>
			We understood about software processing, value of each project similarly manage human resource to finish schedule. We confident to bring your display organization' face and deploy it to your clients identical as your cultural and services. Our Mediacare validate feeling and develop your jobs to high level. Our services bring to you the comfortable, subtlety and gentle.</p>
			<p>Come with us and discover your capability. Freedomwalking Studio - the best IT solution services for your business</p>
			<p>Founder: Tuan Anh NGUYEN</p>
	
		</div>
		<div class="col-lg-6 right">
			
			<h3>Freedomwalking Studio</h3>
			<p>The door open the road. The road go to success.</p>
			<img src="../photos/01.png" alt="">

		</div>

	</div>

</div>

<div class="fw-container">	
	<div class="form-product-container" id="achivement">

		<div class="form-wrap-product">
			
			<?php while($row_inner_busi_achi = $sql_inner_busi_achi_rs->fetch_assoc()):?>
				
				<div class="fw-products col-lg-4">
					
					<h4><?php echo $row_inner_busi_achi['name_busi'];?></h4>
					<h3><?php echo $row_inner_busi_achi['name_project'];?></h3>
		
					<div class="summ-cont">
						
						<div class="form-inli col-lg-6">
							
							<label for="" class="col-lg-6">Date Started: </label>
							<p class="col-lg-4"><?php echo $row_inner_busi_achi['date_started'];?></p>
						
						</div>
						<div class="form-inli col-lg-6">
							
							<label for="" class="col-lg-6">Date finished: </label>
							<p class="col-lg-4"><?php echo $row_inner_busi_achi['date_finished'];?></p>
						
						</div>
						
						<div class="form-inli col-lg-12">
							
							<label for="" class="col-lg-4">Description: </label>
							<p class="col-lg-8"><?php echo $row_inner_busi_achi['description'];?></p>
						
						</div>
						<img src="<?php echo $row_inner_busi_achi['img_url'];?>" alt="">
				
						<a href="./?page=detail_achi&id=<?php echo $row_inner_busi_achi['id_achi'];?>" class="">view more</a>
					</div>
				
				</div>	
		
			<?php endwhile;?>
			
		</div>
	</div>
</div>

<div class="form-three-columns-container" id="our-road">

	<div class="fw-container">
		
		<div class="form-wrap-three-columns">
		
			<div class="fw-three-columns col-lg-3">

				<h2>100</h2>
				<p>projects</p>
			
			</div>
			<div class="fw-three-columns col-lg-3">
	
				<h2>100</h2>
				<p>member</p>
			
			</div>
			<div class="fw-three-columns col-lg-3">
	
				<h2>100</h2>
				<p>coffee</p>
			
			</div>
			<div class="fw-three-columns col-lg-3 last">
	
				<h2>thousand</h2>
				<p>solutions</p>
			
			</div>

		</div>

	</div>
	

</div>
<div class="fw-container">
	<div class="form-business-container">

		<h2><?php echo $main_nav['ourroad'];?></h2>
		<div class="form-wrap-business">
			
			<?php while($row_busi_type_1 = $sql_busi_type_rs_1->fetch_assoc()):?>

				<div class="fw-business-item col-lg-4">
					
					<div class="summ-cont">

						<h3 class="col-lg-7"><a href="./?page=detail_busi&id=<?php echo $row_busi_type_1['id_busi_type'];?>"><?php echo $row_busi_type_1['name_busi'];?></a></h3>
						<i class="<?php echo $row_busi_type_1['icon'];?> col-lg-5" aria-hidden="true"></i>
						
						<div class="form-inli">
							
							<p><?php echo $row_busi_type_1['description'];?></p>
						
						</div>

					</div>
				
				</div>

			<?php endwhile;?>

		</div>

	</div>
	<div class="form-team-container" id="best-team">

		<h2><?php echo $main_nav['bestteam'];?></h2>
		<div class="form-wrap-team">
			
			<?php while($row_inner_busi_team = $sql_inner_busi_team_rs->fetch_assoc()):?>

				<div class="fw-overview-article1 col-lg-4">
			
					<div class="summ-cont">
						<h3><a href=""><?php echo $row_inner_busi_team['name_team'];?></a></h3>
						<div class="form-inli">
							
							<label class="col-lg-6">Member: </label>
							<span class="col-lg-3"><?php echo $row_inner_busi_team['member_number'];?></span>
						
						</div>
						<div class="form-inli">
							
							<?php if($row_inner_busi_team['available'] == 1):?>
								
								<p>Our team is already for your project.</p>
							<?php else:?>
								<p>Our team was busy right now.</p>
							<?php endif;?>

							<p></p>
						
						</div>

						<a href="./?page=detail_team&id=<?php echo $row_inner_busi_team['id_team'];?>" class="bord-btn">view more</a>
					</div>
				
				</div>

			<?php endwhile;?>

		</div>

	</div>
	
</div>
<div class="form-client-container">
	<div class="fw-container">
		<div class="form-wrap-client maxtaSLD">
			<ul>
				<?php while($row_inner_busi_client = $sql_inner_busi_client_rs->fetch_assoc()):?>
					<li>
						<div class="fw-client">
								
							<div class="summ-cont">
								<img src="<?php echo $row_inner_busi_client['img_url'] ;?>" alt="">
								<h3><?php echo $row_inner_busi_client['name_presentation_person'];?></h3>
								<h3><?php echo $row_inner_busi_client['name_company'];?></h3>	
								<p><?php echo $row_inner_busi_client['name_position_person'];?></p>
								<p><?php echo $row_inner_busi_client['feed_back'];?></p>
							</div>
						
						</div>
					</li>
				<?php endwhile;?>
			</ul>
			<button class="next-ctrl ctrl-btn"><i class="fa fa-angle-right"></i></button>
			<button class="prev-ctrl ctrl-btn"><i class="fa fa-angle-left"></i></button>
		</div>
	</div>
</div>
	
