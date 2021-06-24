<h1>Create Data Laptop</h1>

<form action="/inputs" method="POST">
    @csrf
   Judul    : <input type="text" name="namaBarang"><br>
   Nama     : <input type="text" name="namaPembeli"><br>
   Deskripsi : <input type="longtext" name="jumlah"><br>
   Gambar : <input type="text" name="harga"><br>

    <input type="submit"   value="Upload">
</form>