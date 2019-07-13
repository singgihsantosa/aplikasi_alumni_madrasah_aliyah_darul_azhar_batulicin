


<div class="header-hal">
    <center><h1>DATA PERUSAHAAN</h1></center>
    <hr>
</div>
<div class="daftar-table table-responsive">
    <table class="table table-striped text-center" id="table">
      <thead>
      <tr>
        <th>No</th>
        <th>Id Perusahaan</th>
        <th>NIS</th>
        <th>Nama Perusahaan</th>
        <th>Alamat Perusahaan</th>


        <th>Opsi</th>
      </tr>
    </thead>
    <tbody>
    <?php
    $data = $objAdmin->showPerusahaan();
    $no = 1;
    while ($a = $data->fetch_object()) {
    ?>
    <tr>
      <td><?= $no; ?></td>
      <td><?= $a->id_perusahaan; ?></td>
      <td><?= $a->nis; ?></td>
      <td><?= $a->nama_perusahaan; ?></td>
      <td><?= $a->alamat_perusahaan; ?></td>
      <?php if (@$_SESSION['hak_akses'] == 2): ?>
      <td>
        <a href="?view=edit-perusahaan&id_perusahaan=<?=$a->id_perusahaan; ?>" class="btn btn-sm btn-warning">Edit</a>
        <a href="?view=hapus-perusahaan&id_perusahaan=<?=$a->id_perusahaan; ?>" class="btn btn-sm btn-danger">Hapus</a>

      </td>

    <?php endif; ?>
    </tr>
      <?php
      $no++;
      }
      ?>
    </tbody>
    </table>

</div>
<?php if (@$_SESSION['hak_akses'] == 2): ?>

<a href="?view=tambah-data-perusahaan">
  <button type="button" class="btn btn-primary">Tambah</button>
</a>
<a href="views/perusahaan/laporan-perusahaan.php">
  <button type="button" class="btn btn-primary">Laporan</button>
</a>
<?php endif; ?>
