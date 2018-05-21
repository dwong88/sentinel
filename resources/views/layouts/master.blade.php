
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Authentication</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link href="https://getbootstrap.com/docs/3.3/examples/jumbotron-narrow/" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>

  <body>

    <div class="container">
      @include('layouts.top-menu')

      @yield('content')

      @include('layouts.footer')
    </div> <!-- /container -->
  </body>
</html>
