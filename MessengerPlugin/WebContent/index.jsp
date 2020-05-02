<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome my site</h1>
	<h2>this is an example about fb messenger</h2>
	
	<script>
	  window.fbAsyncInit = function() {
	    FB.init({
	      appId            : '250226099505298', /* your-app-id */
	      autoLogAppEvents : true,
	      xfbml            : false, /* nếu không sd social plugin thì để false */
	      version          : 'v6.0'
	    });
	    FB.login(function(response) {
	        if (response.authResponse) {
	         console.log('Welcome!  Fetching your information.... ');
	         FB.api('/me', function(response) {
	           console.log('Good to see you, ' + response.name + '.');
	         });
	        } else {
	         console.log('User cancelled login or did not fully authorize.');
	        }
	    });
	  };
	</script>
	<script async defer src="https://connect.facebook.net/en_US/sdk.js"></script>
	
</body>
</html>