@extends('admin.template.main')

@section('title', 'Home')

@section('content')
<!DOCTYPE html>
<html>
  <head>
    <style>

    </style>
  </head>
  <body>
<div
  class="fb-like"
  data-share="true"
  data-width="450"
  data-show-faces="true">
</div>

    <script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '253160681780311',
      xfbml      : true,
      version    : 'v2.8'
    });
    FB.AppEvents.logPageView();
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
  </body>
</html>
@endsection