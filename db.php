<?php 


    session_start();
    $store = $_SESSION['store'];

    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
    $con = mysqli_connect("localhost", "root", "java@123", "testimonial");

    if (isset($_POST["submit"])) {

        $name = $_POST['name'];
        $image = $_FILES['image']['name'];
        $check = $_POST['check']; 
        $tmp_name = $_FILES['image']['tmp_name'];
        $imageFileType = pathinfo($image, PATHINFO_EXTENSION);
        $image_name = time()."." .$imageFileType;
        $target_path = "uploads/";
        $target_path = $target_path . basename($image_name);

        if (move_uploaded_file($tmp_name, $target_path)) {
    
            $query = "INSERT INTO `user`(`name`, `image`, `status`,`store_name`) VALUES ('$name','$image_name','$check','$store')";
            $result = mysqli_query($con,$query);
            $_SESSION['SUCCESS'] = "SUCCESSFULLY";
            header("location: dashboard.php");
        }else {
            $_SESSION['SUCCESS'] = "ERROR";
        }
    }

    $query = "SELECT * FROM user where store_name = '$store'";
    $result = mysqli_query($con, $query);
    $r = array();
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $r[] = $row;
    }
        print_r(json_encode($r));
    }

?>