<?php include 'database.php'; ?>
<?php 

//Create Database query
  $query= "SELECT * FROM shouts";
  $shouts= mysqli_query($con, $query);
  ?>


<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title><h1>Sag's BOX</h1></title>
  </head>
  <header><h1>Sag's Box</h1></header>
  <body>
  	<div class="container">
  		<ul id="shouts">
        <?php while($row= mysqli_fetch_assoc($shouts)):
                   ?>

  			<li class="shoutit"><span><?php echo $row['time'] ?>: <strong><?php echo $row['user'] ?> - </strong></span><?php echo $row['msg']?></li>
      <?php endwhile ?>
  		</ul>
  		<div id="input">

        <?php if(isset($_GET['error'])) :?>
          <div class="error"> <?php $_GET['error'] ?> </div>
        <?php endif ?>
  			<form method="post" action="process.php"> 
  				<input type="text" name="user" class="user" placeholder="Dein Name"/>
  					<br>
  				<input type="text" name="msg" class="msg" placeholder="Deine Nachricht"/>
  					<br>
  				<input class="btn" type="submit" name="submit" value="Boom"/>
  			</form>
  		</div>
  	</div>
  </body>
</html>