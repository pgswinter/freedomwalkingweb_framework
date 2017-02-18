<?php
	
	$id_team = $_GET['id'];

	// Join business and team
	$sql_team = "SELECT business_type.name_busi,
						team.id_team,
						team.name_team,
						team.member_number,
						team.available,
						team.team_icon,
                        achievement.name_project,
                        member_team.name_member
						from team INNER JOIN business_type INNER JOIN achievement INNER JOIN member_team 
						where business_type.id_busi_type = team.id_busi_type
                        and achievement.id_achi = team.id_achi
                        and member_team.id_person = team.id_person";
	$sql_team_rs = $consql_new->query($sql_team);

	// Join business and blog with ID blog was got
	$sql_join_busi_team_id = "SELECT business_type.name_busi,
						team.id_team,
						team.id_person,
						team.name_team,
						team.member_number,
						team.available,
						team.team_icon,
                        achievement.name_project,
                        member_team.name_member
						from team INNER JOIN business_type INNER JOIN achievement INNER JOIN member_team 
						where business_type.id_busi_type = team.id_busi_type
                        and achievement.id_achi = team.id_achi
                        and member_team.id_person = team.id_person
						and team.id_team = '$id_team'";

	$sql_team_id_rs = $consql_new->query($sql_join_busi_team_id);					

	// Get person from each team
	$sql_get_person_from_team = "SELECT career.id_career,
								career.name_career,
								career.language_programming,
								career.tool,
								career.soft_skill,
								career.processing,
								career.library,
								career.framework,
								career.platform,
								member_team.name_member,
								member_team.img_member,
								member_team.experience,
								member_team.id_person
								from member_team 
								INNER JOIN career
								where member_team.id_career = career.id_career
								and member_team.id_team = '$id_team'";

	$sql_get_person_from_team_rs = $consql_new->query($sql_get_person_from_team);					

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
		<div class="col-lg-9">
			<?php while($row_join_team = $sql_team_id_rs->fetch_assoc()):?>
				<div class="fw-detail-article">
					
					<h3><a href=""><?php echo $row_join_team['name_team'];?> Team</a></h3>
					<div class="form-inli col-lg-2">
						
						<label for="" class="col-lg-12">Business Type: </label>
						<p class="col-lg-12"><?php echo $row_join_team['name_busi'];?></p>
			
					</div>
					<div class="form-inli col-lg-2">
						
						<label for="" class="col-lg-12">Project: </label>
						<p class="col-lg-12"><?php echo $row_join_team['name_project'];?></p>
			
					</div>
					<div class="form-inli col-lg-2">
						
						<label for="" class="col-lg-12">Number member: </label>
						<p class="col-lg-12"><?php echo $row_join_team['member_number'];?></p>
			
					</div>
					<div class="form-inli col-lg-3">
						
						<?php if($row_join_team['available'] == 1):?>
										
							<p>Our team is already for your project.</p>
						<?php else:?>
							<p>Our team was busy right now.</p>
						<?php endif;?>				
			
			
					</div>
					
					<img src="<?php echo $row_join_team['team_icon'];?>" alt="" class="prst-img">
			
				</div>
			<?php endwhile;?>
			<h3 class="clear-float font-helve">Member Team</h3>
			<?php while($row_member_team = $sql_get_person_from_team_rs->fetch_assoc()):?>
				<div class="fw-detail-article member-team">
				
					<div class="form-inli">
						<div class="col-lg-6">
							
							<img src="<?php echo $row_member_team['img_member'];?>" alt="" class="prst-img">
							<a href="./?page=detail_personal&id=<?php echo $row_member_team['id_person'];?>">View detail</a>
						
						</div>
						<div class="col-lg-5 no-clear">
							<div class="form-inli">
								<div class="col-lg-6">
									<label for="" class="col-lg-12">Name member: </label>
								</div>
								<div class="col-lg-6">
									<p><?php echo $row_member_team['name_member'];?></p>
								</div>
							</div>
							<div class="form-inli">
								<div class="col-lg-6">
									<label for="" class="col-lg-12">Experience: </label>
								</div>
								<div class="col-lg-6">
									<p><?php echo $row_member_team['experience'];?> year</p>
								</div>
							</div>
							<div class="form-inli">
								<div class="col-lg-6">
									<label for="" class="col-lg-12">name_career: </label>
								</div>
								<div class="col-lg-6">
									<p><?php echo $row_member_team['name_career'];?></p>
								</div>
							</div>
							<div class="form-inli">
								<div class="col-lg-6">
									<label for="" class="col-lg-12">language_programming: </label>
								</div>
								<div class="col-lg-6">
									<p><?php echo $row_member_team['language_programming'];?></p>
								</div>
							</div>
							<div class="form-inli">
								<div class="col-lg-6">
									<label for="" class="col-lg-12">tool: </label>
								</div>
								<div class="col-lg-6">
									<p><?php echo $row_member_team['tool'];?></p>
								</div>
							</div>
							<div class="form-inli">
								<div class="col-lg-6">
									<label for="" class="col-lg-12">soft_skill: </label>
								</div>
								<div class="col-lg-6">
									<p><?php echo $row_member_team['soft_skill'];?></p>
								</div>
							</div>
							<div class="form-inli">
								<div class="col-lg-6">
									<label for="" class="col-lg-12">processing: </label>
								</div>
								<div class="col-lg-6">
									<p><?php echo $row_member_team['processing'];?></p>
								</div>
							</div>
							<div class="form-inli">
								<div class="col-lg-6">
									<label for="" class="col-lg-12">library: </label>
								</div>
								<div class="col-lg-6">
									<p><?php echo $row_member_team['library'];?></p>
								</div>
							</div>
							<div class="form-inli">
								<div class="col-lg-6">
									<label for="" class="col-lg-12">framework: </label>
								</div>
								<div class="col-lg-6">
									<p><?php echo $row_member_team['framework'];?></p>
								</div>
							</div>
							<div class="form-inli">
								<div class="col-lg-6">
									<label for="" class="col-lg-12">platform: </label>
								</div>
								<div class="col-lg-6">
									<p><?php echo $row_member_team['platform'];?></p>
								</div>
							</div>
						</div>
					</div>
			
				</div>
			<?php endwhile;?></div>
		<div class="fw-relative-wrap col-lg-3">
			<h3 class="titl-helv">Relatived News</h3>
			<?php while($row_sql_team_rs = $sql_team_rs->fetch_assoc()):?>
				<div class="fw-relative-article">
					
					<img src="<?php echo $row_sql_team_rs['team_icon'];?>" alt="" class="prst-img">
					<h4><a href="./?page=detail_team&id=<?php echo $row_sql_team_rs['id_team'];?>"><?php echo $row_sql_team_rs['name_team'];?></a></h4>
					<div class="form-inli col-lg-4 first">
						
						<label for="" class="col-lg-12">From: </label>
						<p class="col-lg-12"><?php echo $row_sql_team_rs['name_busi'];?></p>

					</div>
					
					<div class="form-inli col-lg-4">
						
						<label for="" class="col-lg-12">Published: </label>
						<p class="col-lg-12"><?php echo $row_sql_team_rs['name_project'];?></p>

					</div>

				</div>
			<?php endwhile;?>
		</div>
	</div>
	

</body>
</html>
