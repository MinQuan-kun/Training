<?php 

// $price = 15;
// if($price > 15){
//     echo "The price is greater than 15";
// }
// else if($price == 15){
//     echo "The price is equal to 15";
// }
// else {
//     echo "The price is not greater than 15";
// }

$products = [
    ['name' => 'T-shirt', 'price' => 15, 'color' => 'red'],
    ['name' => 'Jeans', 'price' => 40, 'color' => 'blue'],
    ['name' => 'Jacket', 'price' => 60, 'color' => 'black'],
    ['name' => 'Shoes', 'price' => 80, 'color' => 'white'],
];
foreach($products as $product){
    if($product['price'] > 50){
        echo $product['name'] . " is expensive";
        echo "<br>";
    }
    else {
        echo $product['name'] . " is affordable";
        echo "<br>";
    }
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
    <div>

    <ul>
        <?php foreach($products as $product): ?>
            <?php if($product['price'] > 50): ?>
                <li style="color: red;"><?php echo $product['name']; ?> is expensive</li>
            <?php else: ?>
                <li style="color: green;"><?php echo $product['name']; ?> is affordable</li>
            <?php endif; ?>
        <?php endforeach; ?>
    </ul>

    </div>
</body>
</html>