<h1>Edit</h1>
<form action="/inputs/{{$input->id}}" method="POST">
    <!-- karena mau edit maka kita perlu nambahin method PUT -->
    @method('PUT')
    @csrf
    <!-- valu dalam kurung kurawal disini fungsinya ngambil data dari data yang ingin diedit supaya bisa ditampilkan memlalui $input yang udah dibuat tadi di controller -->
   namaBarang    : <input type="text" name="namaBarang" value="{{ $input->namaBarang}}"><br>
   namaPembeli     : <input type="text" name="namaPembeli" value="{{ $input->namaPembeli}}"><br>
   Jumlah : <input type="text" name="Jumlah" value="{{ $input->Jumlah}}"><br>
   harga : <input type="text" name="harga" value="{{ $input->harga}}"><br>

    <input type="submit"   value="Edit">
</form>