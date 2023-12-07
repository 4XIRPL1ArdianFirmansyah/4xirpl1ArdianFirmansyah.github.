<?php 
include('koneksi.php');

// Mendapatkan data produk berdasarkan id_menu
if (isset($_GET['id_menu'])) {
    $id_menu = $_GET['id_menu'];

    $query_produk = mysqli_query($koneksi, "SELECT * FROM produk WHERE id_menu = $id_menu");
    $row_produk = mysqli_fetch_assoc($query_produk);

    // Memeriksa apakah data produk ditemukan
    if ($row_produk) {
        $gambar_produk = $row_produk['gambar'];
        $nama_menu = $row_produk['nama_menu'];
        $harga_menu = $row_produk['harga'];
    }
}
?>

<!DOCTYPE html><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Produk</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        .about {
            display: flex;
            align-items: center;
        }

        .about img {
            max-width: 50%; /* Sesuaikan ukuran gambar sesuai kebutuhan */
            margin-right: 20px; /* Berikan jarak antara gambar dan konten */
        }

        .content {
            flex: 1; 
        }

        .detail-title {
            text-align: center;
            margin-bottom: 20px; 
            font-size: 2.6rem;
            margin-bottom: 3rem;
            color: var(--primary);
            
        }
    </style>
</head>
<body>
    
    <h2 style = "color:white; text-align: center;
            margin-bottom: 20px; 
            font-size: 2.6rem;
            margin-bottom: 3rem;
            "><span class="detail-title">Detail</span> Produk</h2>
    <section id="about" class="about">
        <img src="img/menu/<?php echo $gambar_produk; ?>" alt="Gambar Produk" />
        <div class="content">
            <div class="row">
                <div class="content">
                    <h3><?php echo $nama_menu; ?></h3>
                    <p>Rp. <?php echo $harga_menu; ?></p>
                   
                    <p>Deskripsi</p>
                    <p></p>
                    <p>
                        <a href="beli.php"><button type="button" style="background-color: #b6895b; border-radius: 0.2rem; padding: 0.3rem 1rem; color: white;">Pesan</button></a>
                        <a href="produk.php"><button type="button" style="background-color: #b6895b; border-radius: 0.2rem; padding: 0.3rem 1rem; color: white;">Menu lainnya   </button></a>
                     </p>

                </div>
            </div>
        </div>
    </section>
</body>
</html>
