<h1>Edit</h1>
<form action="/inputs/{{$input->id}}" method="POST">
    <!-- karena mau edit maka kita perlu nambahin method PUT -->
    @method('PUT')
    @csrf
    <!-- valu dalam kurung kurawal disini fungsinya ngambil data dari data yang ingin diedit supaya bisa ditampilkan memlalui $input yang udah dibuat tadi di controller -->
   Judul    : <input type="text" name="namaBarang" value="{{ $input->judul}}"><br>
   Nama     : <input type="text" name="namaPembeli" value="{{ $input->nama}}"><br>
   Deskripsi : <input type="longtext" name="jumlah" value="{{ $input->deskripsi}}"><br>
   Gambar : <input type="text" name="harga" value="{{ $input->gambar}}"><br>

    <input type="submit"   value="Upload">
</form>