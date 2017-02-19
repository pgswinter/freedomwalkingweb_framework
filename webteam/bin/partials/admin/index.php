<?php include("../../conndb.php");?>
<?php include("nav_admin.php");?>
<?php

	session_start();

	$user_check = $_SESSION['login_user'];
	$sql_check_user = "SELECT * from user where username = '$user_check'";
	$sql_check_user_rs = $consql_new->query($sql_check_user);

	$row = $sql_check_user_rs->fetch_assoc();
	$login_session = $row['username'];
	if(!isset($login_session)){

		header('Location: ..\signin\index.php');

	}
	if($row['priority'] != 1){

		foreach ($table_name_block as $key => $value) {
			if($admin_page==$key){

				session_destroy();
				header("location: signin/index.php");

			}
		}

	}
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>

	<link rel="stylesheet" href="../../../font/HelveticaNeueLTPro-Lt/font.css">
	<link rel="stylesheet" href="../../../font/HelveticaNeueLTPro-Roman/font.css">	
	<link rel="stylesheet" href="../../../font/HelveticaNeueLTPro-BlkCn/font.css">

	<!-- vendor -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!-- From css fw-kit -->
	<link rel="stylesheet" href="../../../dist/css/fw-left-right.css">

	<!-- Include Editor style. -->
	<link href='https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.4.0/css/froala_editor.min.css' rel='stylesheet' type='text/css' />
	<link href='https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.4.0/css/froala_style.min.css' rel='stylesheet' type='text/css' />
	<!-- Plugins Editor -->
	<link rel="stylesheet" href="../../../vendor/froala/css/plugins/image.min.css">

</head>
<body>
	

	<div class="fw-left-right">

		<div class="fw-left">
			
			<a href="signout/index.php"><img src="../../../img/logo.png" alt=""></a>
			<ul>
				<?php if($row['priority'] == 1):?>
					<?php foreach($table_name_admin as $key => $value):?>
						<li <?php if($admin_page == $key):?>class="active"<?php endif;?>><a href="./?admin_page=<?php echo $key;?>"><?php echo $value;?></a></li>
					<?php endforeach;?>
				<?php elseif($row['priority'] == 2):?>
					<?php foreach($table_name_leader as $key => $value):?>
						<li <?php if($admin_page == $key):?>class="active"<?php endif;?>><a href="./?admin_page=<?php echo $key;?>"><?php echo $value;?></a></li>
					<?php endforeach;?>
				<?php elseif($row['priority'] == 5):?>
					<?php foreach($table_name_member as $key => $value):?>
						<li <?php if($admin_page == $key):?>class="active"<?php endif;?>><a href="./?admin_page=<?php echo $key;?>"><?php echo $value;?></a></li>
					<?php endforeach;?>
				<?php endif;?>
			</ul>
		
		</div>

		<div class="fw-right">
			
			<label for="" class="rnd-btn user-check">Hello, <?php echo $_SESSION['login_user'];?>!</label>		
			<a href="signout/index.php" class="rnd-btn sign-out-btn">Sign out</a>
			<?php include('task/' . $admin_page . '/index.php');?>

		</div>

	</div>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<!-- Include JS file. -->
	<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.4.0/js/froala_editor.min.js'></script>
	<script src="../../../vendor/froala/js/plugins/image.min.js"></script>
	<script src="../../../vendor/froala/js/plugins/link.min.js"></script>
	<script src="../../../vendor/froala/js/plugins/lists.min.js"></script>
	<script src="../../../vendor/froala/js/plugins/draggable.min.js"></script>
	<script src="../../../vendor/froala/js/plugins/file.min.js"></script>
	<script src="../../../vendor/froala/js/plugins/video.min.js"></script>
	<script>
		$(function() {
		$.FroalaEditor.DefineIcon('imageInfo', {NAME: 'info'});
		$.FroalaEditor.RegisterCommand('imageInfo', {
		  title: 'Info',
		  focus: false,
		  undo: false,
		  refreshAfterCallback: false,
		  callback: function () {
		    var $img = this.image.get();
		    alert($img.attr('src'));
		  }
		});

		$('#froala-editor').froalaEditor({
		  // Set image buttons, including the name
		  // of the buttons defined in customImageButtons.
		  imageEditButtons: ['imageDisplay', 'imageAlign', 'imageInfo', 'imageRemove']
		})
		});

		$(function() {
		$.FroalaEditor.DefineIcon('imageInfo', {NAME: 'info'});
		$.FroalaEditor.RegisterCommand('imageInfo', {
		  title: 'Info',
		  focus: false,
		  undo: false,
		  refreshAfterCallback: false,
		  callback: function () {
		    var $img = this.image.get();
		    alert($img.attr('src'));
		  }
		});

		$('.froala-editor-update').froalaEditor({
		  // Set image buttons, including the name
		  // of the buttons defined in customImageButtons.
		  imageEditButtons: ['imageDisplay', 'imageAlign', 'imageInfo', 'imageRemove']
		})
		});

		$('#name_team_slct').change(function(){

	        $('.name_team_render').val($(this).val())
	        
	    });
	    $('#name_busi_slct').change(function(){

	        $('.name_busi_render').val($(this).val())
	        
	    });
	    $('#id_link_slct').change(function(){

	        $('.id_link_render').val($(this).val())
	        
	    });

	</script>
</body>
</html>