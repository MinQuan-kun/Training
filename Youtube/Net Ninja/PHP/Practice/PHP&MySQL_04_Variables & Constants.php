<?php

    define('Name', "Nhonnn"); // hằng số


    #$name = "Ikkun"; # $ để khai báo biến
    $age = 20; # kiểu số
    $isMale = true; # kiểu boolean
    $height = 1.7; # kiểu số thập phân
   # $name = "Ikkun Nguyen";  kiểu chuỗi (đổi giá trị biến)


    // echo "Hi my name is $name"; // để in biến
    echo "<br>"; // để xuống dòng
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My first PHP file</title>
</head>
<body>

    <h1>
        <?php 
        echo Name;
        ?>
    </h1>
    <div>
        <?php 
        echo "Hi my name is ".Name; #.hằng số để nối chuỗi
        echo "<br>";
        echo "I am $age years old";
        echo "<br>";
        echo "I am $height m tall";
        echo "<br>";
        ?>
    </div>
</body>
</html>