<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="layout" content="main"/>
		<title>Bangalore Football Fans: <g:layoutTitle default="For the love of football"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<g:javascript library="jquery" plugin="jquery"></g:javascript>
		<g:javascript library="application"/>
		<g:layoutHead/>
		<r:layoutResources/>
		<style>
			a:link {color:#00E5EE;t}      /* unvisited link */
			a:visited {color:#05B8CC;}  /* visited link */
			a:hover {color:#05B8CC;}  /* mouse over link */
			a:active {color:#00E5EE;}  /* selected link */
		
			body {padding:0;margin:0;font-family:"Trebuchet MS", "Arial", "sans-serif";color:#555;font-size:15px;}
			
			#header-container {font-size:22px;overflow-y:auto;margin:auto;border-bottom:1px solid #dedede;position:absolute;top:0px;left:0px;width:100%;padding:10px 0px;}
				.logo-container {float:left;width:200px;height:50px;border:1px solid #dedede;margin:0px 10px;}
				.header-options-container {float:right;}
		
			#body-container {background:#f5f5f5;position:relative;}
			
			#footer-container{border-top:1px solid #dedede;position:absolute;bottom:0px;left:0px;width:100%;height:80px;}
			
			.content-container {padding:10px;font-size:12px;}	
			.content-title {font-size:18px;font-weight:bold;margin:10px 0px;}
			
			.input-field {border:1px solid #888;}
			.input-text {width:300px;height:80px;}
			.btn {background:#555;color:#fff;text-align:center;border:none;padding:5px;border-radius:3px}
			.note {font-size:9px;color:#888;}
			.error-list {background:#aaa;color:#fff;}
			.player-photo-container {width:50px;height:50px;overflow:hidden;text-align:center;}
				.player-photo {width:50px;}
		</style>
	</head>
	<body>
		<div id="header-container">
			<div class="logo-container">
			
			</div>
			<div class="header-options-container">
			
			</div>
		</div>
		<div id="body-container">
			<g:layoutBody/>	
		</div>
		<div id="footer-container">
			
		</div>
		<r:layoutResources />
	</body>
</html>
