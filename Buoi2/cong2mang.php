<?php
function congHaiMang($a, $b) {
    if (count($a) !== count($b)) {
        return "Lỗi: Hai mảng không có cùng độ dài.";
    }

    $result = [];
    for ($i = 0; $i < count($a); $i++) {
        $result[] = $a[$i] + $b[$i];
    }

    return $result;
}

// Chạy thử hàm với hai mảng đã cho
$a = [344, 224, 223, 7737, 9922, -828];
$b = [-344, -324, 123, 773, -9922, 828];

$ketQua = congHaiMang($a, $b);
if (is_array($ketQua)) {
    echo "Kết quả: " . implode(", ", $ketQua);
} else {
    echo $ketQua;
}
?>
