<?xml version="1.0" encoding="UTF-8"?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
	<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
	<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
		<meta charset="utf-8" />
		<title>Duck DNS - spec</title>
		<meta name="viewport" content="initial-scale=1.0" />
		<meta name="description" content="api specification" />
		<meta name="keywords" content="spec, api, info, manual" />
		<meta name="author" content="" />
		
		<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
				<link rel="stylesheet" href="css/base-1.css">
		<link rel="stylesheet" href="css/addons-1.css" />
		<link rel="stylesheet" href="css/ducky-12.css" />
		
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/ducky_icon.png" />
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/ducky_icon.png" />
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/ducky_icon.png" />
		<link rel="apple-touch-icon-precomposed" href="img/ducky_icon.png" />
		<link rel="shortcut icon" href="img/favicon.ico" />
	</head>
	
	<body>
		<header id="ee-masthead" class="ee-masthead" role="banner">
			



	
	
		
	


	<div class="ee-masthead-initial">
		<div class="container group ">
			<div class="ee-masthead-segment">
				<div class="ee-masthead-segment__segment home">
					<a class="" href="/" data-segment="">Duck&nbsp;DNS</a>
				</div>
				<div class="ee-masthead-segment__segment">
					<a class="current" href="spec.jsp">spec</a>
				</div>
				<div class="ee-masthead-segment__segment">
					<a class="" href="about.jsp">about</a>
				</div>
				<div class="ee-masthead-segment__segment">
					<a class="" href="why.jsp">why</a>
				</div>
				<div class="ee-masthead-segment__segment">
					<a class="" href="install.jsp">install</a>
				</div>
				<div class="ee-masthead-segment__segment">
					<a class="" href="faqs.jsp">faqs</a>
				</div>

	
			</div>
			<div class="ee-masthead-utility">

	
				<span class="ee-masthead-utility__link" >
					<a href="/login?generateRequest=google">
						<input title="login with google" type="image" src="img/google_button.png" class="login-button" />
					</a>
				</span>
				<span class="ee-masthead-utility__link" >
					<a href="https://ssl.reddit.com/api/v1/authorize?scope=identity&response_type=code&client_id=itWtg9oX-HlZkw&redirect_uri=https://www.duckdns.org/login&state=f8399fbed00c46019594e33a4588ed43&duration=temporary">
						<input title="login with reddit" type="image" src="img/login_reddit.png" class="login-button" />
					</a>
				</span>
				<span class="ee-masthead-utility__link" >
					<a href="https://www.facebook.com/dialog/oauth?client_id=588109711245719&redirect_uri=https://www.duckdns.org/login&response_type=token&scope=email">
						<input title="login with facebook" type="image" src="img/login_facebook.png" class="login-button" />
					</a>
				</span>
				<span class="ee-masthead-utility__link" >
					<a href="/login?generateRequest=twitter">
						<input title="login with twitter" type="image" src="img/login_twitter.png" class="login-button" />
					</a>
				</span>
				<span class="ee-masthead-utility__link" >
					<a href="/login?generateRequest=persona">
						<input title="login with persona" type="image" src="img/login_persona.png" class="login-button" />
					</a>
				</span>	
	
	

			</div>
		</div>
	</div>
	
		</header>
		<main id="main" tabindex="0" role="main" class="ducky">
		    <section class="module panels">
		    	



<div class="container outer-container">
	<div class="one-true white">
		<div class="col span-4">
			<div class="panel white logo-holder">
				<p class="ee-masthead__logo ducky_icon">
				</p>
			</div>
		</div>
		<div class="col span-7">
			<div class="panel white" style="background-color: transparent;">
				<h1 class="center">Duck DNS</h1>	
				
					
					
						<div class="news-items">
							<!-- NEWS:START -->
							<h2 class="center">free dynamic DNS hosted on Amazon VPC</h2>
							<p class="center">
								<strong>support&nbsp;us:</strong> become a <a target="new" style="color:#cccccc;text-decoration:underline;" href="https://www.patreon.com/user?u=3209735&ty=h&u=3209735">Patreon</a><br/>
								<strong>new:</strong> <a style="color:#cccccc;text-decoration:underline;" href="/spec.jsp">TXT Record</a> support - can be used with letsencrypt </a><br/>
							</p>
							<!-- NEWS:END -->
						</div>
					
					
				
			</div>
		</div>
	</div>
</div>

		        <div class="container">
		        	<div class="one-true white">
		                <div class="col span-12">
		                    <div class="panel white">
						  		<div class="hero-unit">
									<h3>HTTP API Specification</h3>
									<p>The update URL can be requested on HTTPS or HTTP.  Is it recommended that you <b>always use HTTPS</b><br/>
									We provide HTTP services for unfortunate users that have HTTPS blocked<br/>
									</p>
									
									<p>
									You can update your domain(s) with a single HTTPS get to DuckDNS
									</p>
<pre>https://www.duckdns.org/update?domains={YOURVALUE}&amp;token={YOURVALUE}[&amp;ip={YOURVALUE}][&amp;ipv6={YOURVALUE}][&amp;verbose=true][&amp;clear=true]</pre>
									<p>The domain can be a single domain - or a comma separated list of domains.<br/>
									The domain does not need to include the .duckdns.org part of your domain, just the subname.<br/>
									If you do not specify the IP address, then it will be detected - this only works for IPv4 addresses<br/>
									You can put either an IPv4 or an IPv6 address in the <b>ip parameter</b><br/>
									If you want to update BOTH of your IPv4 and IPv6 records at once, then you can use the optional parameter <b>ipv6</b><br/>
									to clear both your records use the optional parameter <b>clear=true</b><br/>
									</p>
									
									<p>A normal <b>good response</b> is</p>
<pre>OK</pre>
									<p>A normal <b>bad response</b> is</p>
<pre>KO</pre>
									<p>if you add the <b>&amp;verbose=true</b> parameter to your request, then OK responses have more information</p>
<pre>OK 
127.0.0.2 [The current IP address for your update - can be blank]
2002:DB7::21f:5bff:febf:ce22:8a2e [The current IPV6 address for your update - can be blank]
UPDATED [UPDATED or NOCHANGE]</pre>
									<p><b>HTTP Parameters</b><br/>
									<b>domains</b> - REQUIRED - comma separated list of the subnames you want to update<br/>
									<b>token</b> - REQUIRED - your account token<br/>
									<b>ip</b> - OPTIONAL - if left blank we detect IPv4 addresses, if you want you can supply a valid IPv4 or IPv6 address<br/>
									<b>ipv6</b> - OPTIONAL - a valid IPv6 address, if you specify this then the autodetection for ip is not used<br/>
									<b>verbose</b> - OPTIONAL - if set to true, you get information back about how the request went<br/>
									<b>clear</b> - OPTIONAL - if set to true, the update will ignore all ip's and clear both your records
									</p>
									
									<br/><br/><br/>
									<h3>Special no-parameter request format</h3>
									<p>
									Some very basic routers can only make requests without parameters<br/>
									For these requirements the following request is possible
<pre>https://duckdns.org/update/{YOURDOMAIN}/{YOURTOKEN}[/{YOURIPADDRESS}]</pre>
									<p><b>Restrictions</b><br/>
									<b>YOURDOMAIN</b> - REQUIRED - only a single subdomain<br/>
									<b>YOURTOKEN</b> - REQUIRED - your account token<br/>
									<b>YOURIPADDRESS</b> - OPTIONAL - if left blank we detect IPv4 addresses, if you want to over-ride this, with a valid IPv4 or IPv6 address
									</p>
									
									<br/><br/><br/>
									<h3>TXT Record API</h3>
									<p>The TXT update URL can be requested on HTTPS or HTTP.  Is it recommended that you <b>always use HTTPS</b><br/>
									We provide HTTP services for unfortunate users that have HTTPS blocked<br/>
									</p>
									
									<p>
									You can update your domain(s) TXT record with a single HTTPS get to DuckDNS<br/>
									your TXT record will apply to all sub-subdomains under your domain e.g. xxx.yyy.duckdns.org shares the same TXT record as yyy.duckdns.org 
									</p>
<pre>https://www.duckdns.org/update?domains={YOURVALUE}&amp;token={YOURVALUE}&amp;txt={YOURVALUE}[&amp;verbose=true][&amp;clear=true]</pre>
									<p>The domain can be a single domain - or a comma separated list of domains.<br/>
									The domain does not need to include the .duckdns.org part of your domain, just the subname.<br/>
									to clear the TXT value of your records use the optional parameter <b>clear=true</b><br/>
									</p>
									
									<p>A normal <b>good response</b> is</p>
<pre>OK</pre>
									<p>A normal <b>bad response</b> is</p>
<pre>KO</pre>
									<p>if you add the <b>&amp;verbose=true</b> parameter to your request, then OK responses have more information</p>
<pre>OK 
sometxt=thistext [The current TXT record for your update - can be blank]
UPDATED [UPDATED or NOCHANGE]</pre>
									<p><b>HTTP Parameters</b><br/>
									<b>domains</b> - REQUIRED - comma separated list of the subnames you want to update<br/>
									<b>token</b> - REQUIRED - your account token<br/>
									<b>txt</b> - REQUIRED - the txt you require<br/>
									<b>verbose</b> - OPTIONAL - if set to true, you get information back about how the request went<br/>
									<b>clear</b> - OPTIONAL - if set to true, the update will ignore the txt parameter and clear the txt record<br/>
									
									<br/>
									Note that the TXT record does not show up in the WEB interface<br/>
									You can use online web based Dig tools to query your record<br/>
									https://www.digwebinterface.com/?hostnames=test.duckdns.org&amp;type=TXT&amp;ns=resolver&amp;useresolver=8.8.4.4<br/>
									To see your TXT record on linux or osx you can query DNS directly</p>
<pre>dig test.duckdns.org TXT</pre>
									<p>As stated before, this record will be also presented for any sub-subdomain queries</p>
<pre>dig test.test.duckdns.org TXT</pre>
									<p>This can be used for example to prove your ownership with letsencrypt.org</p>					
									
						  		</div>
							</div>
		                </div>
		            </div>
		    	</div>
		    </section>
		</main>
		<footer>
			




	<section class="module panels">
		<div class="container">
			<div class="one-true">
				<div class="col span-1">
					<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
						<input type="hidden" name="cmd" value="_donations"/>
						<input type="hidden" name="business" value="76WWWMDFVB43A"/>
						<input type="hidden" name="lc" value="GB"/>
						<input type="hidden" name="item_name" value="Duck DNS"/>
						<input type="hidden" name="currency_code" value="GBP"/>
						<input type="hidden" name="no_shipping" value="1"/>
						<input type="hidden" name="return" value="https://www.duckdns.org"/>
						<input type="hidden" name="cbt" value="return to Duck DNS"/>

						<input type="hidden" name="image_url" value="https://img/ducky_150x50.png"/>
						<input type="hidden" name="cpp_header_ image" value="https://img/ducky_750x90.png"/>
						<input type="hidden" name="cpp_logo_image" value="https://img/ducky_190x60.png"/>
						<input type="hidden" name="cpp_ headerback_ color" value="006699"/>
						<input type="hidden" name="cpp_ headerborder_color" value="333333"/>
						<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_donate_LG.gif" border="0" name="submit" title="PayPal - The safer, easier way to pay online."/>
						<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1"/>
					</form>	
				</div>
				<div class="col span-7" style="text-align: center;">
					<span style="overflow: hidden; border: 1px solid black; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; padding: 4px; padding-left: 0px; font-family: Arial; font-size: 12px; font-weight: bold; background-color: white;">
						<span style="padding: 4px; padding-left: 8px; background-color: #E98A0A; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; color: white;">
							<a href="http://www.bitcoin.org/" style="text-decoration: none; color: white; border: none;">
								<span style="-webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; font-weight: normal; color: white; font-size: 15px; background-color: white; color: #E98A0A; padding: 1px 5px; padding-top: 0px;">&#3647;</span>
								Bitcoin
							</a>
						</span>
						<span style="padding: 5px;">
							<a href="bitcoin:1CoHE96MHeDkygnqAFmy6Qn9NwP6wVF7bm"><span class="bitcoin--full">1CoHE96MHeDkygnqAFmy6Qn9NwP6wVF7bm</span><span class="bitcoin--small">donate</span></a>
						</span>
					</span>
				</div>
				<div class="col span-3 dogespan" style="text-align: center;">
					<a target="new" href="https://www.patreon.com/user?u=3209735&ty=h&u=3209735"><img style="height:35px;" title="become a Patreon" id="patreon" src="img/patreon.png"/></a>
				</div>
				
				<div class="col span-1 pullright">
					<a target="new" href="https://plus.google.com/communities/111042707043677579973"><img title="join the community" id="community" src="img/gplus_icon.png"/></a>
				</div>
			</div>
		</div>
	</section>

		</footer>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script src="js/ducky-10.js"></script>
<c:if test="true">
		<script src="js/tracking.js"></script>
</c:if>
	</body>
</html>