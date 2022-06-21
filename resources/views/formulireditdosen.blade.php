<html>
@include('header')
@yield('header')

<div class="col-sm-10">
    <div class="container-fluid mt-4 rounded">
        <form action="/dosen/updatedosen/{{$dosen->id}}" method="POST" class="pt-2 pb-2">
            @csrf
            <div class="form-group w-25">
                <label>NIDN</label>
                <input type="number" name="nidn" class="form-control" placeholder="masukan nidn" value="{{ $dosen->nidn }}" required>
            </div>

            <div class="form-group w-25">
                <label>Nama Dosen</label>
                <input type="text" name="nama" value="{{ $dosen->nama }}" class="form-control" placeholder="masukan nama" required>
            </div>

            <label>Status</label>
            <div class="form-group w-25">
               
                <input type="radio" name="status" value="{{ $dosen->status }}" class="form-check-input">
                <label> Dosen Tetap</label>
            </div>
            <div class="form-group w-25">
               
                <input type="radio" name="status" value="{{ $dosen->status }}" class="form-check-input">
                <label> Dosen Tidak Tetap</label>
            </div>

            <div class="form-group w-25">
                <label> Jabatan Fungsional</label>
                <select name="jafung" class="form-control">
                    <option value="{{ $dosen->jafung }}">{{$dosen->jafung}}</option>
                    <option value="Tenaga Pengajar"> Tenaga Pengajar </option>
                    <option value="Asisten Ahli"> Asisten Ahli</option> 
                    <option value="Lektor"> Lektor </option>
                    <option value="Lektor Kepala"> Lektor Kepala </option>
                    <option value="Guru Besar"> Guru Besar </option>
                </select>
            </div>

            <label>Bidang Keahlian</label>
            <div class="form-group w-25">
               
                <input type="checkbox" name="pakar[]" value="{{ $dosen->pakar }}" class="form-check-input">
                <label> Artificial Intelegence</label>
            </div>
            <div class="form-group w-25">
               
                <input type="checkbox" name="pakar[]" value="{{ $dosen->pakar }}" class="form-check-input">
                <label> Web Engineer</label>
            </div>
            <div class="form-group w-25">
               
                <input type="checkbox" name="pakar[]" value="{{ $dosen->pakar }}" class="form-check-input">
                <label> DB Engineer</label>
            </div>
            <div class="form-group pt-4">
                <input type="submit" value="SIMPAN" class="btn btn-outline-primary">
            </div>
        </form>  
    </div>
</div>

</body>
</html>