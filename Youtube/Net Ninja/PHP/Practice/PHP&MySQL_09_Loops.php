<?php 

    $My_array = array("One", "Two", "Three", "Four", "Five");
    // foreach($My_array as $value){
    //     echo $value . "<br>";
    // }
    // for($i = 0; $i <count($My_array); $i++){
    //     echo $My_array[$i]. "<br>";
    // }
    
    $products = array(
        array("name" => "shoes", "price" => 50),
        array("name" => "pants", "price" => 60),
        array("name" => "shirts", "price" => 70)
    );

    $i2 = 0;
    while($i2 < count($products))
    {
        echo $products[$i2]['name']. "<br>";
        $i2++;
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP & MySQL</title>

</head>
<body>
    <h1>products list</h1>
    <ul>
        <?php foreach($products as $product){ ?>
            <li>
                <?php echo $product['name'] . " - " . $product['price']; ?>
            </li>
        <?php } ?>
    </ul>

</body>
</html>