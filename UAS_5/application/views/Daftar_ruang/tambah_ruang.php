<div class="container mx-auto">
    <div class="col-md-5  mx-auto bg-info">
  <small class="text-center">Tambah Data</small>
  
  <?php echo form_open_multipart('daftar_ruang/simpan');?>
  <div class="form-group">
    <label for="nama_ruang">Nama Ruang</label>
    <input type="text" class="form-control" id="nama_ruang" name="nama_ruang" >
   </div>
  <div class="form-group">
    <label for="fungsi_ruang">Fungsi Ruang</label>
    <input type="text" class="form-control" name="fungsi_ruang" id="fungsi_ruang" >
  </div>
  <div class="form-group">
    <label for="luas">Luas</label>
    <input type="text" class="form-control" name="luas" id="luas" >
  </div>
  <div class="form-group">
    <label for="gambar">Gambar</label>
    <input type="file" id="gambar" name="gambar">
  </div>
  <button type="submit" class="btn btn-primary">Tambah</button>
  <br>
</form>   
    </div>
</div>