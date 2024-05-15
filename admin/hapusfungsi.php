<?php 

include '../dbconnect.php';

// fungsi hapus

function hapus($idproduk) {
	global $conn;
	mysqli_query($conn, "DELETE FROM produk WHERE idproduk = $idproduk");
	return mysqli_affected_rows($conn);
}

$idproduk = $_GET["idproduk"];

if( hapus($idproduk) > 0 ) {
    echo "
        <script>
        alert('data berhasil dihapus!');
        document.location.href = 'produk.php';
        </script>
    ";
} else {
    echo "
        <script>
        alert('data gagal dihapus!');
        document.location.href = 'produk.php';
        </script>
    ";   
}



?>