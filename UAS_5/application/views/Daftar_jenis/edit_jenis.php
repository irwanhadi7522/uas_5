<div class="container mx-auto ">
    <div class="col-md-5  mx-auto bg-info">
  <small class="text-center">Tambah Jenis</small>
    <form action="<?= base_url() ?>daftar_jenis/edit_simpan" method="post">
  <div class="form-group">
    <label for="jenis">Jenis</label>
    <input type="text" class="form-control" value="<?= $jenis['jenis ']?>" name="jenis" id="jenis">
    <input type="hidden" class="form-control" value="<?= $jenis['id_jenis']?>" name="id_jenis" >
   </div>
  <div class="form-group">
    <label for="ket_jenis">Ket Jenis</label>
    <input type="text" class="form-control" name="ket_jenis" <?= $jenis['ket_jenis']?> id="ket_jenis">
  </div>
  <button type="submit" class="btn btn-primary mb-5">Simpan</button>
  <br>
</form>   
    </div>
</div>