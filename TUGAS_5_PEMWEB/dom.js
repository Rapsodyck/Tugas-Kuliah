// Mengambil elemen-elemen penting
const flowerGallery = document.getElementById('flower-gallery');
const basket = document.getElementById('basket');
const basketStatus = document.getElementById('basket-status');
const changeTextColorButton = document.getElementById('change-text-color');
const changeBackgroundColorButton = document.getElementById('change-background-color');

// Fungsi untuk memperbarui status keranjang
function updateBasketStatus() {
  const flowerCount = basket.children.length;
  basketStatus.textContent = `The flower basket currently contains ${flowerCount} flowers.`;
}

// Event listener untuk menambahkan bunga ke keranjang
flowerGallery.addEventListener('click', (event) => {
  if (event.target.tagName === 'IMG') {
    const flowerClone = event.target.cloneNode(true);
    flowerClone.style.cursor = 'pointer';

    // Tambahkan event listener untuk menghapus bunga dari keranjang
    flowerClone.addEventListener('click', () => {
      basket.removeChild(flowerClone);
      updateBasketStatus();
    });

    basket.appendChild(flowerClone);
    updateBasketStatus();
  }
});

// Event listener untuk mengubah warna teks
changeTextColorButton.addEventListener('click', () => {
  const color = prompt('Input your color:');
  if (color) {
    basketStatus.style.color = color;
  }
});

// Event listener untuk mengubah warna latar belakang
changeBackgroundColorButton.addEventListener('click', () => {
  const color = prompt('Input your color:');
  if (color) {
    document.body.style.backgroundColor = color;
  }
});