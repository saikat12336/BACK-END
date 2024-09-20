<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<meta charset="UTF-8">
	<title>PHP Search</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2" style="margin-top: 5%;">
				<div class="row">
					<?php
						$connection=mysqli_connect('localhost','root','','shopee');
						if(isset($_POST['search'])){
							$searchKey=$_POST['search'];
							$sql="SELECT * FROM product WHERE item_brand OR item_name LIKE '%$searchKey%'";
						}else{
						$sql="SELECT * FROM product";
						$searchKey="";
						}

						$result = mysqli_query($connection,$sql);
					?>
				<form action="" method="POST"> 
					<div class="col-md-6">
						<input type="text" name="search" class='form-control' placeholder="Search By Name" value="<?php	echo $searchKey; ?>" > 
					</div>
					<div class="col-md-6 text-left">
						<button class="btn">Search</button>
					</div>
				</form>

				<br>
				<br>
				</div>
				<table class="table table-bordered">
					<tr>
						<th>Name</th>
						<th>Amount</th>
						<!-- <th>City</th> -->
					</tr>
					<?php
					if($result->num_rows > 0){
						while($row=mysqli_fetch_object($result)){
					?>
					<tr>
						<td><?php echo $row->item_name ?></td>
						<td>$<?php echo $row->item_price ?></td>
						<td>
							<img src="<?php echo "".$row->item_image ?>" width="40%" alt="Image">	
						</td>
						
					</tr>
					<?php }	}else
					echo "OPPS NO RECORD FOUND !!"; ?>
				</table>
			</div>
		</div>
	</div>
</body>
</html>