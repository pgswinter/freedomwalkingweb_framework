<?php

	$sql_user = "SELECT * from `user`";
	$sql_user_rs = $consql_new->query($sql_user);

	if(isset($_POST['for_insert'])){

		$username = $consql_new->real_escape_string($_POST['insr_username']);
		$password = $consql_new->real_escape_string($_POST['insr_password']);
		$priority = $consql_new->real_escape_string($_POST['insr_priority']);
		$email = $consql_new->real_escape_string($_POST['insr_email']);

		$sql_insert_user = "INSERT INTO `user` (
									`username`,
									`password`,
									`priority`,
									`email`)
							VALUES ('$username',
									'$password',
									'$priority',
									'$email')";

		$consql_new->query($sql_insert_user);

		echo $consql_new->error;
	}

	if(isset($_POST['for_update'])){

		$manage_id_user = $consql_new->real_escape_string($_POST['manage_id_user']);
		$username = $consql_new->real_escape_string($_POST['username']);
		$password = $consql_new->real_escape_string($_POST['password']);
		$password = $consql_new->real_escape_string($_POST['priority']);
		$email = $consql_new->real_escape_string($_POST['email']);

		$sql_update_user = "UPDATE `user` SET 
												`username`='$username',
												`password`='$password',
												`priority`='$priority',
												`email`='$email'
												WHERE 
												`id`='$manage_id_user'";
		$consql_new->query($sql_update_user);

		echo $consql_new->error;
		
	}

	if(isset($_POST['for_delete'])){

		$manage_id_user = $consql_new->real_escape_string($_POST['manage_id_user']);
		$username = $consql_new->real_escape_string($_POST['username']);
		$password = $consql_new->real_escape_string($_POST['password']);

		$sql_update_user = "DELETE FROM `user` WHERE `id`='$manage_id_user'";
		$consql_new->query($sql_update_user);

		echo $consql_new->error;

	}
	
?>
<body>
	
			
	<h2>New User</h2>
	<article>
		<form action="" method="POST">
			
			<div class="form-inli col-lg-6">
				<label for="">Username</label>
				<input type="text" placeholder="Typing data here ..." name="insr_username">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Password</label>
				<input type="text" placeholder="Typing data here ..." name="insr_password">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Priority</label>
				<input type="text" placeholder="Typing data here ..." name="insr_priority">
			</div>
			<div class="form-inli col-lg-6">
				<label for="">Email</label>
				<input type="text" placeholder="Typing data here ..." name="insr_email">
			</div>

			<div class="clear-float">
				<input type="submit" value="+ Add" name="for_insert">
			</div>
			
		</form>
	</article>
	<h2>Update User</h2>
	<?php while($row_user = $sql_user_rs->fetch_assoc()):?>
		<h3>ID User: <?php echo $row_user['id'];?></h3>
		<article>
			<form action="" method="POST">
				
				<input type="hidden" value="<?php echo $row_user['id'];?>" name="manage_id_user">
				<div class="form-inli col-lg-6">
					<label for="">Username</label>
					<input type="text" value="<?php echo $row_user['username'];?>" name="username">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Password</label>
					<input type="text" value="<?php echo $row_user['password'];?>" name="password">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Priority</label>
					<input type="text" value="<?php echo $row_user['priority'];?>" name="priority">
				</div>
				<div class="form-inli col-lg-6">
					<label for="">Email</label>
					<input type="text" value="<?php echo $row_user['email'];?>" name="email">
				</div>

				<div class="clear-float">
					<input type="submit" value="Update" name="for_update">
					<input type="submit" value="Delete" name="for_delete">
				</div>

			</form>
		</article>
	<?php endwhile;?>	


</body>
</html>