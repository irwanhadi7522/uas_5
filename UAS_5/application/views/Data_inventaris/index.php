<div class="container ml-50">
   <div class="col-md-12 bg-">
        <h1 class="text-center">Daftar Inventaris</h1>
        <a href="<?= base_url() ?>Data_inventaris/tambah_inventaris" class="btn btn-primary"><i class="fa fa-plus"> Tambah Data</i></a>
        <a href="<?= base_url() ?>Data_inventaris/tambah_inventaris" class="btn btn-success"><i class="fa fa-download"> Export Exel</i></a>
        <hr>
        <table class="table table-sm table-dark text-center">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Tanggal</th>
      <th scope="col">Kode Inventaris</th>
      <th scope="col">Nama Barang</th>
      <th scope="col">Merek</th>
      <th scope="col">Seri</th>
      <th scope="col">Nilai Wajar</th>
      <th scope="col">Gambar</th>
      <th scope="col">Aksi</th>
    </tr>
  </thead>
  <tbody>
  <?php
$i=1;
foreach($inventaris as $row){
  ?>
    <tr>
      <td scope="row"><?= $i++; ?></td>
      <td><?= $row['tanggal']; ?></td>
      <td><?= $row['kode_inventaris']; ?></td>
      <td><?= $row['nama_barang']; ?></td>
      <td><?= $row['merek']; ?></td>
      <td><?= $row['seri']; ?></td>
      <td><?= $row['nilai_wajar']; ?></td>
      <td><img src="<?= base_url()?>img/<?= $row['gambar']?>" style="width:50px;" class="rounded float-left"></td>
        <td>
        <a href="" class="btn btn-info"><i class="fa fa-pen">Edit</i></a>
        <a href="" class="btn btn-danger"><i class="fa fa-trash"></i></a>
      </td>
    </tr>
    <?php
}
    ?>
  </tbody>
</table>
    </div>
</div>