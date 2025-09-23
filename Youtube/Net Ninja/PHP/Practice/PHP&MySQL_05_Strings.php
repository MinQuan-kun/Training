<?php
    $stringOne = 'My name is';
    $stringTwo = "Nhonn";
    $name = "NhoNN";
    $age = 18;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP Turtorial</title>
</head>
<body>

    <h1>
        <?php 
            echo $stringOne . " " . $stringTwo;
            echo "<br>";
            echo "$stringOne $stringTwo";
            echo "<br>";
            echo "My name is $name. I am $age years old.";
            echo "<br>";
            echo 'My name is ' . $name . '. I am ' . $age . ' years old.'; // Cách này in ra biến được nếu sử dụng ""
            echo "<br>";
            echo "Thằng Minh tín nó bị \"gay\" "; # Dùng \ để in ra dấu " 
            echo 'Thằng Minh tín nó bị "gay"'; # Cách này không cần dùng \ để in ra dấu "
            echo "<br>";
            echo $name[0]; // In ra ký tự đầu tiên của chuỗi $name
            echo $name[1];
            echo "<br>";
            echo strlen($name); // Đếm độ dài chuỗi
            echo "<br>";
            echo strtoupper($name); // Viết hoa tất cả các ký tự
            echo "<br>";
            echo strtolower($name); // Viết thường tất cả các ký tự
            echo "<br>";
            echo str_replace("N", "W", $name); // Thay thế ký tự N thành W
        ?>
    </h1>
    
</body>
</html>