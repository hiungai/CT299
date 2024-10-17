<?php
// Định nghĩa hàm tính giai thừa
function giaiThua($n) {
    if ($n == 0 || $n == 1) {
        return 1;
    } else {
        return $n * giaiThua($n - 1);
    }
}

// Chạy thử với giá trị 10
$so = 10;
echo "Giai thừa của $so là: " . giaiThua($so);
?>
