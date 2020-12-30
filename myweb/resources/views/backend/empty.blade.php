<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  @include('backend.widgets.head')
</head>

<body>
    <div class="container-scroller">
 <!-- container-scroller -->
  <!-- plugins:js -->
  @yield('content')
    </div>
    @include('backend.widgets.js')
  <!-- endinject -->
</div>
</body>

</html>
