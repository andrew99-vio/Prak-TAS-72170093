<html>
@include('header')

@yield('header')

    <div class="col-sm-10">
        <div class="card-header bg-primary">
            <a name="" class="btn btn-success" href="formuliruser" role="button"><i class="bi bi-plus-square-fill"></i>ADD USER</a>
            <form class="form-inline my-2 my-lg-0 float-right" method="GET" action="cari">
                <input class="form-control mr-sm-2" name="cari" type="search" placeholder="search" aria-label="Search">
                <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>

        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Id USER</th>
                    <th scope="col">Email User</th>
                    <th scope="col">Password User</th>
                    <th scope="col">aksi</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($user as $no => $d)
                <tr>
                    <th scope="row">{{ $user->firstItem()+$no }}</th>
                        <td>{{ $d->id }}</td>
                        <td>{{ $d->email_users }}</td>
                        <td>{{ $d->password_users }}</td>
                        
                        <td>
                            <a href="/user/edituser/{{ $d->id }}" class="btn btn-outline-primary">edit</a>
                            <a href="/user/deleteuser/{{$d->id}}" class="btn btn-outline-primary">hapus</a>     
                        </td>
                    </th>
                </tr>
                @endforeach
            </tbody>
        </table>
        <span class="float-right">{{ $user->links() }}</span>
    </div>

</div>
</body>
</html>