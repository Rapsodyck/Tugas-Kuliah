<?php
$servername = "localhost"; // Server lokal
$username = "root";        // Username database
$password = "";            // Password database (kosong jika menggunakan XAMPP default)
$dbname = "hubungi_kami";  // Nama database Anda

// Membuat koneksi ke database
$conn = new mysqli($servername, $username, $password, $dbname);

// Periksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
?>
