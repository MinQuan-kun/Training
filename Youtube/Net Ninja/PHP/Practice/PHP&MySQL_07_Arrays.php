<?php
    // index Arrays

    $peopleOne = ['Trừng', 'Láo', 'Nhonn']; // Cách khai báo mảng

    $name = $peopleOne[0];
    // echo $name;

    $peopleTwo = array('Tín', 'Kiệt', 'Bình'); // Cách khai báo mảng khác
    print_r($peopleTwo);
    echo "<br>";
    

    $peopleTwo[2] = 'Quân'; // Thay đổi phần tử trong mảng
    print_r($peopleTwo);

    echo "<br>";
    $peopleTwo[] = 'Huy'; // Thêm phần tử vào mảng
    // print_r($peopleTwo);

    array_push($peopleTwo, 'Duy'); // Thêm phần tử vào mảng
    // print_r($peopleTwo);

    // echo count($peopleTwo); // Đếm số phần tử trong mảng

    $peopleThree = array_merge($peopleOne, $peopleTwo); // Nối mảng
    // print_r($peopleThree);

    $ikkun = ['Nhonn' => 'cool','Age' => 25, 'Height' => 1.7]; // Mảng kết hợp (associative array)
    echo $ikkun['Nhonn'];
    echo "<br>";
    print_r($ikkun);
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
            
        ?>
    </h1>
    
</body>
</html>