<html>
@include('header')

@yield('header')

    <div class="col-sm-10">
        <div class="card-header bg-primary">
            <a name="" class="btn btn-success" href="/dosen/formulirdosen" role="button"><i class="bi bi-plus-square-fill"></i>ADD DOSEN</a>
            <form class="form-inline my-2 my-lg-0 float-right" method="GET" action="/dosen/cari">
                <input class="form-control mr-sm-2" name="cari" type="search" placeholder="search" aria-label="Search">
                <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>

        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">NIDN</th>
                    <th scope="col">Nama</th>
                    <th scope="col">Status</th>
                    <th scope="col">Jabatan Fungsional</th>
                    <th scope="col">Keahlian</th>
                    <th scope="col">aksi</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($dosen as $no => $d)
                <tr>
                    <th scope="row">{{ $dosen->firstItem()+$no }}</th>
                        <td>{{ $d->nidn }}</td>
                        <td>{{ $d->nama }}</td>
                        <td>{{ $d->status }}</td>
                        <td>{{ $d->jafung }}</td>
                        <td>{{ $d->pakar }}</td>
                        
                        <td>
                            <a href="/dosen/editdosen/{{ $d->id }}" class="btn btn-outline-primary">edit</a>
                            <a href="/dosen/deletedosen/{{ $d->id }}" class="btn btn-outline-primary">hapus</a>     
                        </td>
                    </th>
                </tr>
                @endforeach
            </tbody>
        </table>
        <span class="float-right">{{ $dosen->links() }}</span>
    </div>

</div>
</body>
</html>