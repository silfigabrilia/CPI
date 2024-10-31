<?php
include '../assets/conn/config.php';
if (isset($_GET['aksi'])) {
    if ($_GET['aksi'] == 'simpan') {
        $nama_penyakit = $_POST['nama_penyakit'];
        $keterangan = $_POST['keterangan'];
        $pengendalian = $_POST['pengendalian'];
        $gambar = '';

        // Cek jika gambar diunggah
        if (isset($_FILES['gambar']) && $_FILES['gambar']['name'] != '') {
            $gambar = $_FILES['gambar']['name'];
            $target_dir = "../uploads/";

            if (!is_dir($target_dir)) {
                mkdir($target_dir, 0777, true);
            }

            $target_file = $target_dir . basename($_FILES["gambar"]["name"]);
            $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
            $valid_extensions = array("jpg", "jpeg", "png", "gif");

            if (in_array($imageFileType, $valid_extensions)) {
                if (!move_uploaded_file($_FILES['gambar']['tmp_name'], $target_file)) {
                    echo "<script>alert('Gagal mengunggah gambar.')</script>";
                }
            } else {
                echo "<script>alert('Tipe file tidak valid. Hanya menerima JPG, JPEG, PNG, dan GIF.');</script>";
            }
        }

        // Simpan data ke database, gambar hanya akan disertakan jika ada
        $query = "INSERT INTO tb_penyakit (nama_penyakit, keterangan, pengendalian";
        $values = "VALUES ('$nama_penyakit', '$keterangan', '$pengendalian'";

        if ($gambar != '') {
            $query .= ", gambar";
            $values .= ", '$gambar'";
        }

        $query .= ") " . $values . ")";
        
        mysqli_query($conn, $query);
        header("location: penyakit.php");
    }
}

include 'header.php';
?>

<div class="container">
    <div class="card shadow p-4 mb-5">
        <div class="card-header">
            <h5 class="m-0 font-weight-bold text-primary">Tambah Penyakit</h5>
        </div>

        <div class="card-body">
            <form action="tambah_penyakit.php?aksi=simpan" method="POST" enctype="multipart/form-data" onsubmit="return validateForm()">
                <div class="form-group">
                    <label>Nama Penyakit</label>
                    <input type="text" name="nama_penyakit" id="nama_penyakit" class="form-control">
                    <div class="error-message" id="nama_penyakit_error" style="color:red; display:none;">
                        Nama Penyakit tidak boleh kosong!
                    </div>
                </div>
                <div class="form-group">
                    <label>Gambar (Opsional)</label>
                    <input type="file" name="gambar" class="form-control">
                </div>
                <div class="form-group">
                    <label>Keterangan</label>
                    <textarea class="form-control" name="keterangan" id="keterangan" rows="3"></textarea>
                </div>

                <div class="form-group">
                    <label>Pengendalian</label>
                    <textarea class="form-control" name="pengendalian" id="pengendalian" rows="3"></textarea>
                </div>
                
                <hr>
                <a href="penyakit.php" class="btn btn-secondary">Batal</a>
                <input type="submit" value="Simpan" class="btn btn-primary">
            </form>
        </div>
    </div>
</div>

<script>
    function validateForm() {
        var namaPenyakit = document.getElementById("nama_penyakit").value;
        var namaPenyakitError = document.getElementById("nama_penyakit_error");

        namaPenyakitError.style.display = "none";

        if (namaPenyakit == "") {
            namaPenyakitError.style.display = "block";
            return false;
        }

        return true;
    }
</script>

<?php
include 'footer.php';
?>
