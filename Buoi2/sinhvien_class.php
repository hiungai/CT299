<?php
class SinhVien {
    private $mssv;
    private $hoten;
    private $ngaysinh;

    // Phương thức xây dựng
    public function __construct($mssv, $hoten, $ngaysinh) {
        $this->mssv = $mssv;
        $this->hoten = $hoten;
        $this->ngaysinh = $ngaysinh;
    }

    // Phương thức hủy
    public function __destruct() {
        // Code để giải phóng tài nguyên nếu cần
    }

    // Phương thức gán trị
    public function setMSSV($mssv) {
        $this->mssv = $mssv;
    }

    public function setHoTen($hoten) {
        $this->hoten = $hoten;
    }

    public function setNgaySinh($ngaysinh) {
        $this->ngaysinh = $ngaysinh;
    }

    // Phương thức trả về giá trị của các thuộc tính
    public function getMSSV() {
        return $this->mssv;
    }

    public function getHoTen() {
        return $this->hoten;
    }

    public function getNgaySinh() {
        return $this->ngaysinh;
    }

    // Hàm tính tuổi
    public function tinhTuoi() {
        $ngaysinh = new DateTime($this->ngaysinh);
        $hientai = new DateTime();
        $tuoi = $hientai->diff($ngaysinh);
        return $tuoi->y;
    }
}

// Khai báo biến sv có kiểu class SinhVien và gán các giá trị
$sv = new SinhVien("123456", "Nguyen Van A", "2000-01-01");

// In thông tin và tính tuổi
echo "MSSV: " . $sv->getMSSV() . "\n";
echo "Họ tên: " . $sv->getHoTen() . "\n";
echo "Ngày sinh: " . $sv->getNgaySinh() . "\n";
echo "Tuổi: " . $sv->tinhTuoi() . "\n";
?>
