
<?php

require('connection.php');
session_start();

if(!isset($_SESSION['Adminname'])){
    header("Location: login.php?error=Login first");
}

// if(isset($_POST['update_order'])){
//    $order_id = $_POST['order_id'];
//    $update_payment = $_POST['update_payment'];
//    mysqli_query($con, "UPDATE `orders` SET payment_status = '$update_payment' WHERE id = '$order_id'") or die('query failed');
//    $message[] = 'payment status has been updated!';
// }

if(isset($_GET['delete'])){
   $delete_id = $_GET['delete'];
   mysqli_query($con, "DELETE FROM `orders` WHERE id = '$delete_id'") or die('query failed');
   header('location:adminorder.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>dashboard</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="style/dashboard.css?v=1.8">

</head>
<body>
   
<?php @include 'adminheader.php'; ?>


<section class="placed-orders">

   <h1 class="title">placed orders</h1>

   <div class="box-container">

      <?php
      
      $select_orders = mysqli_query($con, "SELECT * FROM `orders`order by id desc") or die('query failed');
      if(mysqli_num_rows($select_orders) > 0){
         while($fetch_orders = mysqli_fetch_assoc($select_orders)){
      ?>
      <div class="box">
         <p> Order no : <span><?php echo $fetch_orders['id']; ?></span> </p>
         <p> Placed on : <span><?php echo $fetch_orders['placedon']; ?></span> </p>
         <p> Name : <span><?php echo $fetch_orders['username']; ?></span> </p>
         <p> Number : <span><?php echo $fetch_orders['phone']; ?></span> </p>
         <p> Email : <span><?php echo $fetch_orders['email']; ?></span> </p>
         <p> Address : <span><?php echo $fetch_orders['address']; ?></span> </p>
         <p>Total products : <span><?php echo $fetch_orders['totalproduct']; ?></span> </p>
         <p> Total price : <span>Rs <?php echo $fetch_orders['totalprice']; ?>/-</span> </p>
         <p> Payment method : <span><?php echo $fetch_orders['method']; ?></span> </p>
         <form action="" method="post">
            <input type="hidden" name="order_id" value="<?php echo $fetch_orders['id']; ?>">
            <!-- <select name="update_payment">
               <option disabled selected><?php echo $fetch_orders['payment_status']; ?></option>
               <option value="pending">pending</option>
               <option value="completed">completed</option>
            </select> -->
            <!-- <input type="submit" name="update_order" value="update" class="option-btn"> -->
            <a href="Adminorder.php?delete=<?php echo $fetch_orders['id']; ?>" class="delete-btn" onclick="return confirm('delete this order?');">delete</a>
         </form>
      </div>
      <?php
         }
      }else{
         echo '<p class="empty">no orders placed yet!</p>';
      }
      ?>
   </div>

</section>














</body>
</html>