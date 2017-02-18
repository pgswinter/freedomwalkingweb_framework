<?php
	
	$id_achi = $_GET['id'];

	// JOIN Achivement and Business Database.
	$sql_join_busi_achi = "SELECT business_type.name_busi, achievement.id_achi, achievement.name_project, achievement.duration, achievement.number_member, achievement.description, achievement.img_url FROM business_type INNER JOIN achievement WHERE business_type.id_busi_type=achievement.id_busi_type";
	$sql_join_busi_achi_rs = $consql_new->query($sql_join_busi_achi);

	// JOIN business and Achivement with ID achivement was got
	$sql_join_busi_achi_id = "SELECT business_type.name_busi, achievement.id_achi, achievement.name_project, achievement.duration, achievement.number_member, achievement.description, achievement.img_url FROM business_type INNER JOIN achievement WHERE business_type.id_busi_type=achievement.id_busi_type AND achievement.id_achi = $id_achi";
	$sql_join_busi_achi__id_rs = $consql_new->query($sql_join_busi_achi);

	// JOIN Team and Achivement with ID achivement was got
	$sql_join_team_achi_id = "SELECT achievement.date_started, achievement.name_project, achievement.date_finished, achievement.img_url,achievement.comment, achievement.description, team.id_team, team.name_team, team.member_number from achievement join team where achievement.id_achi = team.id_achi and achievement.id_achi = $id_achi";
	$sql_join_team_achi__id_rs = $consql_new->query($sql_join_team_achi_id);

	// JOIN Team and Achivement
	$sql_join_team_achi = "SELECT achievement.id_achi, achievement.date_started, achievement.name_project, achievement.date_finished, achievement.img_url,achievement.comment, achievement.description, team.id_team, team.name_team, team.member_number from achievement join team where achievement.id_achi = team.id_achi";
	$sql_join_team_achi_rs = $consql_new->query($sql_join_team_achi);

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
		<?php while($row_sql_join_busi_achi_id = $sql_join_team_achi__id_rs->fetch_assoc()):?>
			<div class="fw-detail-article col-lg-9">
			
				<h3><a href=""><?php echo $row_sql_join_busi_achi_id['name_project'];?></a></h3>
				<div class="form-inli col-lg-2">
					
					<label for="" class="col-lg-12">Project Name: </label>
					<p class="col-lg-12"><?php echo $row_sql_join_busi_achi_id['name_project'];?></p>

				</div>
				<div class="form-inli col-lg-2">
					
					<label for="" class="col-lg-12">Date Started: </label>
					<p class="col-lg-12"><?php echo $row_sql_join_busi_achi_id['date_started'];?></p>

				</div>
				
				<div class="form-inli col-lg-2">
					
					<label for="" class="col-lg-12">Date Finished: </label>
					<p class="col-lg-12"><?php echo $row_sql_join_busi_achi_id['date_finished'];?></p>

				</div>
				<div class="form-inli col-lg-2">
					
					<label for="" class="col-lg-12">Name Team</label>
					<a href="./?page=detail_team&id=<?php echo $row_sql_join_busi_achi_id['id_team'];?>" class="col-lg-12"><p><?php echo $row_sql_join_busi_achi_id['name_team'];?></p></a>

				</div>
				<div class="form-inli col-lg-2">
					
					<label for="" class="col-lg-12">Number of member</label>
					<p class="col-lg-12"><?php echo $row_sql_join_busi_achi_id['member_number'];?></p>

				</div>
				<div class="form-inli col-lg-2 end">
					
					<label for="" class="col-lg-12">Comment</label>
					<p class="col-lg-12"><i class="fa fa-comment"></i></p>

				</div>
				<img src="<?php echo $row_sql_join_busi_achi_id['img_url'];?>" alt="" class="prst-img">
				
				<div class="summ-cont">
					
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quod vitae impedit neque, quo fuga porro voluptatum, tempore eos numquam nulla unde odit in distinctio nihil placeat provident labore! Fuga aspernatur, aliquam ipsam ipsa possimus assumenda expedita odio alias obcaecati aperiam nesciunt nihil sint molestiae reprehenderit doloribus molestias minima fugiat?</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores voluptatibus consectetur vel commodi blanditiis id, modi inventore exercitationem ex officia ipsam cupiditate voluptatem qui dicta quasi voluptas corrupti totam, incidunt. Necessitatibus enim, et perferendis quasi aliquid quae quaerat doloremque, quo dolor atque minus mollitia dolore cupiditate sed fugiat ratione beatae!</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam consectetur adipisci est nisi voluptates alias dolor, distinctio officiis. Eveniet iure odio blanditiis dolore, voluptatibus consectetur dignissimos quaerat molestiae voluptas.</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum, labore?</p>
					<p class="source">Robert - from Freedomwalking Blog</p>

				</div>
				<h4>Comment</h4>
				<textarea name="" id="" cols="30" rows="10" placeholder="Typing your ideals about this article ..."></textarea>
				<input type="submit" value="Send">
				<h4>View commented:</h4>
				<ul>
					<li><?php echo $row_sql_join_busi_achi_id['comment'];?></li>
				</ul>
			</div>
		<?php endwhile;?>
		<div class="fw-relative-wrap col-lg-3">
			<h3 class="titl-helv">Relatived News</h3>
			<?php while($row_join_team_achi_rs = $sql_join_team_achi_rs->fetch_assoc()):?>
				<div class="fw-relative-article">
					
					<img src="<?php echo $row_join_team_achi_rs['img_url'];?>" alt="" class="prst-img">
					<h4><a href="./?page=detail_achi&id=<?php echo $row_join_team_achi_rs['id_achi'];?>"><?php echo $row_join_team_achi_rs['name_project'];?></a></h4>
					<div class="form-inli col-lg-12 first">
						
						<label for="" class="col-lg-6">Project Name: </label>
						<p  class="col-lg-6"><?php echo $row_join_team_achi_rs['name_project'];?></p>

					</div>
					
					<div class="form-inli col-lg-6">
						
						<label for="">Date Started: </label>
						<p class=""><?php echo $row_join_team_achi_rs['date_started'];?></p>

					</div>
					<div class="form-inli col-lg-6 last">
						
						<label for="">Date Finished:</label>
						<p class=""><?php echo $row_join_team_achi_rs['date_finished'];?></p>

					</div>

				</div>
			<?php endwhile;?>
		</div>
	</div>
	

</body>
</html>
