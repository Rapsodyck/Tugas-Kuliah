<?php
// Sertakan file konfigurasi database
include 'config.php';

// Ambil data dari form
$nama = $conn->real_escape_string($_POST['nama']);
$email = $conn->real_escape_string($_POST['email']);
$perusahaan = $conn->real_escape_string($_POST['perusahaan']);
$telepon = $conn->real_escape_string($_POST['telepon']);
$pesan = $conn->real_escape_string($_POST['pesan']);
$captcha = $_POST['g-recaptcha-response'];

// Verifikasi CAPTCHA
$secretKey = "6LeAprgqAAAAADAlAkPDqM-dveTH2pyQIFj-HPXl"; // Ganti dengan Secret Key dari Google reCAPTCHA
$captchaUrl = "https://www.google.com/recaptcha/api/siteverify";
$response = file_get_contents("$captchaUrl?secret=$secretKey&response=$captcha");
$responseKeys = json_decode($response, true);

if (!$responseKeys["success"]) {
    die("Verifikasi CAPTCHA gagal. Harap coba lagi.");
}

// Validasi data
if (empty($nama) || empty($email) || empty($pesan)) {
    die("Harap isi semua field yang wajib (*).");
}

// Query untuk menyimpan data ke database
$sql = "INSERT INTO pesan_hubungi (nama, email, perusahaan, telepon, pesan, captcha_valid)
        VALUES ('$nama', '$email', '$perusahaan', '$telepon', '$pesan', 1)";

// Eksekusi query
if ($conn->query($sql) === TRUE) {
    echo "Pesan Anda berhasil dikirim!";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Tutup koneksi
$conn->close();
?>
