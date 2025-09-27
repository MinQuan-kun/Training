<?php
    $blog = 
    [
        ['name'=>'Nhon','email'=>'lmao@','key'=>'123','age' => 30],
        ['name'=>'Linh','email'=>'linh@','key'=>'123',20],
        ['name'=>'Hieu','email'=>'hieu@','key'=>'123',25]
        
        
    ];
    // print_r($blog[0][0]);
    // echo $blog[0]['name'];
    //echo count($blog);
    $blog[] = ['name'=>'An','email'=>'an@','key'=>'123',22]; 
    // print_r($blog);
    $pop = array_pop($blog); // xoa phan tu cuoi mang
    print_r($pop);
    
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