<?php 
include 'koneksi.php';
session_start();
$id_menu = $_GET['id_menu'];
// var_dump(query("SHOW COLUMNS FROM produk"));
$keranjang = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM keranjang WHERE id_menu = '$id_menu'"));

if(isset($_POST['jumlah'])) {
	$jumlah = $_POST['jumlah'];
} else {
	$jumlah = 1;
}

if($keranjang) {
	var_dump($keranjang);
	$jumlah = $keranjang['jumlah'] + 1;
	mysqli_query($koneksi, "UPDATE keranjang set jumlah = $jumlah where id_menu = $id_menu");
} else {
	$id_menu = $_GET['id_menu'];
	mysqli_query($koneksi, "INSERT INTO keranjang values ('', '$id_menu', '$jumlah')");
}

echo "<script>location='pesanan_pembeli.php'</script>";

 ?>