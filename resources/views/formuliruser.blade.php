<html>
@include('header')

@yield('header')
<div class="col-sm-10">
    <div class="container-fluid mt-4 rounded">
        <form action="/user/simpanuser" method="POST" class="pt-2 pb-2">
            @csrf
            <div class="form-group w-25">
                <label>Email User</label>
                <input type="email" name="email" class="form-control" placeholder="masukan email" required>
            </div>

            <div class="form-group w-25">
                <label>Password</label>
                <input type="password" name="pasw" class="form-control" placeholder="masukan password" required>
            </div>

            
            <div class="form-group pt-4">
                <input type="submit" value="SIMPAN" class="btn btn-outline-primary">
            </div>
        </form>  
    </div>
</div>

</body>
</html>