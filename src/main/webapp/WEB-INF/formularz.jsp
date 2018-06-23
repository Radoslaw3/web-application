<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formularz</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <form action="/zapisz-szkolenie" method="GET" class="form-horizontal">

        <div class="form-group">
            <label for="nazwa" class="col-md-2 control-label">Nazwa:</label>
            <div class="col-md-10">
                <input id="nazwa" name="nazwa" class="form-control"
                       type="text" placeholder="Wpisz nazwe">
            </div>
        </div>

        <div class="form-group">
            <label for="cena" class="col-md-2 control-label">Cena:</label>
            <div class="col-md-10">
                <input id="cena" name="cena" class="form-control"
                       type="number" placeholder="Wpisz cene">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-success">Zapisz</button>
                <a href="menu.html" class="btn btn-danger">Anuluj</a>
            </div>
        </div>


    </form>
</div>


</body>
</html>