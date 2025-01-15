-- Membuat database
CREATE DATABASE IF NOT EXISTS hubungi_kami;

USE hubungi_kami;

CREATE TABLE IF NOT EXISTS pesan_hubungi (
    id INT AUTO_INCREMENT PRIMARY KEY,     
    nama VARCHAR(100) NOT NULL,            
    email VARCHAR(100) NOT NULL,           
    perusahaan VARCHAR(100),                
    telepon VARCHAR(15),                    
    pesan TEXT NOT NULL,                    
    captcha_valid BOOLEAN NOT NULL DEFAULT 0, 
    waktu_kirim TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
