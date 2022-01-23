<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Barang</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
    <style>
      body{
        background-image: url("data:image/jpeg;base64,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");
        background-repeat:no-repeat;
        background-size:cover;
      }
    </style>
  <body class="text-center">
<?php
  include "navbar2.php";
?>
    <div class="container">
    <h1>Data Masyarakat</h1>
    <form action = "tampil_masyarakat.php" method = "POST">
        <input type = "text" name = "cari" class = "form-control" placeholder = "Mau Cari Apa?"/>
    </form>
    <table class="table">
  <thead>
    <tr class="table-dark">
      <th scope="col">ID</th>
      <th scope="col">Nama</th>
      <th scope="col">Harga</th>
      <th scope="col">Tanggal Daftar</th>
      <th scope="col">Deskripsi</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <?php
    include "koneksi.php";
    if (isset($_POST["cari"])){
        //jika ada keyword pencarian
        $cari = $_POST['cari'];
        $query_barang = mysqli_query($koneksi, "select * from barang where id like '%$cari%' or nama_barang like '%$cari%'");
    } else {
        //jika tidak ada keyword pencarian
        $query_barang = mysqli_query($koneksi, "select * from barang");
    }
    while ($dt_barang = mysqli_fetch_array($query_barang)){?>
        <tr> 
            <td><?php echo $dt_barang["id="];?></td>
            <td><?php echo $dt_barang["nama_barang"];?></td>
            <td><?php echo $dt_barang["harga_awal"];?></td>
            <td><?php echo $dt_barang["tgl_daftar"];?></td>
            <td><?php echo $dt_barang["deskripsi"];?></td>
            <td>
            <a href="ubah_barang.php?id=<?=$dt_barang['id']?>" class="btn btn-primary">Ubah</a>
              <a href="hapus_barang.php?id=<?=$dt_barang['id']?>" class="btn btn-danger" onclick="return confirm('Apakah anda yakin ingin menghapus data ini?')">Hapus</a>
            </td>
        </tr>
    <?php
    }
    ?>
  </tbody>
</table>
    <br><a href="tambah_barang.php?id=<?=$dt_barang['id']?>" class="btn btn-success">Tambah</a></br>

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
</html>