<?php
    if($_GET['id_barang']){
        include "koneksi.php";
        $query_hapus=mysqli_query($koneksi,"delete from barang where id_barang='".$_GET['id_barang']."'");
    if($query_hapus){
        echo "<script>alert('Sukses hapus');location.href='tampil_barang.php';</script>";
    } else {
        echo "<script>alert('Gagal hapus');location.href='tampil_barang.php';</script>";
        }
    } 
?>