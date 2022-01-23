<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <title>Ubah Masyarakat</title>
</head>
<body>
    <?php
    include "navbar.php";
    include "koneksi.php";
    $qry_get_masyarakat=mysqli_query($koneksi,"select * from masyarakat where id = '".$_GET['id']."'");
    $dt_masyarakat=mysqli_fetch_array($qry_get_masyarakat);
    ?>
    <div class="container">
        <h3>Ubah Masyarakat</h3>
        <form action="proses_ubah_masyarakat.php" method="post">
            <input type="hidden" name="id" value="<?=$dt_masyarakat['id']?>">
            Nama:
            <input type="text" name="nama" value="<?=$dt_masyarakat['nama']?>" class="form-control">
            Nomor Telepon:
            <input type="text" name="tlp" value="<?=$dt_masyarakat['tlp']?>" class="form-control">

            Username :
            <input type="text" name="username" value="<?=$dt_masyarakat['username']?>" class="form-control" required>
            Password :
            <input type="password" name="password" value="" class="form-control">
            <br><input type="submit" name="simpan" value="Ubah" class="btn btn-primary"><br>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
</html>