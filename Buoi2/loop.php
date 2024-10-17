<?php
    $x = 1;
    echo "while: \n";
    while($x <= 5) {
        echo "The number is: $x \n";
        $x++;
    }
    echo "do… while: \n";
    $x = 1;
    do {
        echo "The number is: $x \n";
        $x++;
        } while ($x <= 5);
            echo "for: \n";
            $x = 1;
    for ($x = 0; $x <= 10; $x++) {
        echo "The number is: $x \n";
    }
    echo "foreach: \n";
    $colors = array("red", "green", "blue", "yellow");
    foreach ($colors as $value) {
        echo "$value \n";
    }
?>