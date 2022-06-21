@section('header')
<head>
<title>SETUP USER</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>

<body>
<div class="row">
    <div class="col-sm-2 border-end bg-secondary">
        <div class="d-flex flex-column">
            <div class="container-fluid">
                <ul class="nav flex-column">
                    @if(session()->has('nama'))
                    <li class="nav-item border-bottom">
                        <a class="nav-link text-white" href="">{{ session()->get('nama') }}</a>
                    </li>
                    @endif

                    <li class="nav-item border-bottom">
                        <a class="nav-link text-white active" href="home">Beranda</a>
                    </li>
                    <li class="nav-item border-bottom">
                        <a class="nav-link active text-white" href="dosen">Dosen</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
@endsection