<?php

	$id_person = $_GET['id'];

	// Select person of member_team
	$sql_person = "SELECT * from member_team where member_team.id_person = '$id_person'";
	$sql_person_rs = $consql_new->query($sql_person);

	// Select other persons of current team
	$sql_team_persons = "SELECT member_team.name_member,
						member_team.img_member,
						member_team.experience,
						member_team.id_person,
						team.available,
						team.name_team
						from member_team INNER JOIN team
						where team.id_team = member_team.id_team";
	$sql_team_person_rs = $consql_new->query($sql_team_persons);


?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	
	<div class="fw-container">
		<?php while($row_person = $sql_person_rs->fetch_assoc()):?>
			<div class="fw-detail-article col-lg-9">
			
				<img src="<?php echo $row_person['img_member'];?>" alt="" class="prst-img">
				<div class="summ-cont">
					
					<?php echo $row_person['desc_yourself'];?>

				</div>
			</div>
		<?php endwhile;?>
		<div class="fw-relative-wrap col-lg-3">
			<h3 class="titl-helv">Relatived News</h3>
			<?php while($row_sql_team_person = $sql_team_person_rs->fetch_assoc()):?>
				<div class="fw-relative-article">
					
					<img src="<?php echo $row_sql_team_person['img_member'];?>" alt="" class="prst-img">
					<h4>
						<a href="./?page=detail_personal&id=<?php echo $row_sql_team_person['id_person'];?>">
							<?php echo $row_sql_team_person['name_member'];?>
						</a>
					</h4>
					<div class="form-inli col-lg-4 first">
						
						<label for="" class="col-lg-12">Team: </label>
						<p class="col-lg-12"><?php echo $row_sql_team_person['name_team'];?></p>

					</div>
					
					<div class="form-inli col-lg-4">
						
						<label for="" class="col-lg-12">Experience: </label>
						<p class="col-lg-12"><?php echo $row_sql_team_person['experience'];?></p>

					</div>
					<div class="form-inli col-lg-4 last">
						
						<label for="" class="col-lg-12">Available</label>
						<?php if($row_sql_team_person['available'] == 1):?>
								
							<p>Busy. Do not disturb!</p>

						<?php else:?>
							<p>I am free. Take me now!</p>
						<?php endif;?>

					</div>

				</div>
			<?php endwhile;?>
		</div>
	</div>

</body>
</html>