<!DOCTYPE html>
<html>
<head>
    <!-- Load file CSS Bootstrap offline -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <br>
    <h4>PHP - DROPDOWN</h4>

    <form action="<?php echo $_SERVER["PHP_SELF"];?>" method="get">
    <div class="form-group">
        <label for="sel1">Pilih Merk HP : </label>
        <select class="form-control" name="merk">
            <?php
            include "koneksi.php";
            //Perintah sql untuk menampilkan semua data pada tabel merk
            $sql="select * from merk";

            $hasil=mysqli_query($kon,$sql);
            $no=0;
            while ($data = mysqli_fetch_array($hasil)) {
            $no++;

            $ket="";
            if (isset($_GET['merk'])) {
                $merk = trim($_GET['merk']);

                if ($merk==$data['kode_merk'])
                {
                    $ket="selected";
                }
            }
            ?>
            <option <?php echo $ket; ?> value="<?php echo $data['kode_merk'];?>"><?php echo $data['kode_merk'];?></option>
            <?php
	}
  ?>
        </select>
    </div>
    <div class="form-group">
        <input type="submit" class="btn btn-info" value="Pilih">
    </div>
    </form>

    <table class="table table-bordered table-hover">
        <br>
        <thead>
        <tr>
            <th>No</th>
            <th>ID</th>
            <th>Nama</th>
            <th>Merk</th>
            <th>RAM (GB)</th>
            <th>ROM (GB)</th>
            <th>Harga (Rp)</th>

        </tr>
        </thead>
        <?php


        if (isset($_GET['merk'])) {
            $merk=trim($_GET['merk']);
            $sql="select * from detailHp where merk='$merk' order by id asc";
        }else {
            $sql="select * from detailHp order by id asc";
        }


        $hasil=mysqli_query($kon,$sql);
        $no=0;
        while ($data = mysqli_fetch_array($hasil)) {
            $no++;

            ?>
            <tbody>
            <tr>
                <td><?php echo $no;?></td>
                <td><?php echo $data["id"]; ?></td>
                <td><?php echo $data["nama"];   ?></td>
                <td><?php echo $data["merk"];   ?></td>
                <td><?php echo $data["ram"];   ?></td>
                <td><?php echo $data["rom"];   ?></td>
                <td><?php echo $data["harga"];   ?></td>
            </tr>
            </tbody>
            <?php
        }
        ?>
    </table>


</div>

</body>
</html>