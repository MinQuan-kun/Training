<?php 

$products = [
    ['name' => 'T-shirt', 'price' => 15, 'color' => 'red'],
    ['name' => 'Jeans', 'price' => 40, 'color' => 'blue'],
    ['name' => 'Jacket', 'price' => 60, 'color' => 'black'],
    ['name' => 'Shoes', 'price' => 80, 'color' => 'white'],
];
foreach($products as $product){
    // if($product['name'] == 'Jacket')
    //    break;
    // else
    //     echo $product['name'] . '<br>';
    if($product['name'] == 'Jacket')
       continue;
    else
        echo $product['name'] . '<br>';
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