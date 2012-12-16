<!---
/**********************************************************************************
Apache License, Version 2.0

Copyright Since [2012] [Luis Majano and Ortus Solutions,Corp]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*********************************************************************************/
--->
<cfoutput>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	<!--- Site Title --->
	<title>
		<cfif cb.isPageView()>
			#cb.getCurrentPage().getTitle()#
		<cfelse>
			#cb.siteName()# - #cb.siteTagLine()#
		</cfif>
	</title>

	<!--- Met Tags --->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="generator" 	 content="ContentBox powered by ColdBox" />
	<meta name="robots" 	 content="index,follow" />

	<!--- Meta Description By Page or By Site --->
	<cfif cb.isPageView() AND len(cb.getCurrentPage().getHTMLDescription())>
		<meta name="description" content="#cb.getCurrentPage().getHTMLDescription()#" />
	<cfelse>
		<meta name="description" content="#cb.siteDescription()#" />
	</cfif>
	<!--- Meta Keywords By Page or By Site --->
	<cfif cb.isPageView() AND len(cb.getCurrentPage().getHTMLKeywords())>
		<meta name="keywords" 	 content="#cb.getCurrentPage().getHTMLKeywords()#" />
	<cfelse>
		<meta name="keywords" 	 content="#cb.siteKeywords()#" />
	</cfif>

	<!--- Base HREF for SES enabled URLs --->
	<base href="#cb.siteBaseURL()#" />

	<!--- RSS Links --->
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Updates" href="#cb.linkRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Comment Updates" href="#cb.linkRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Updates" href="#cb.linkPageRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Comment Updates" href="#cb.linkPageRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Updates" href="#cb.linkSiteRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Comment Updates" href="#cb.linkSiteRSS(comments=true)#" />
	<!--- RSS Discovery If In View Mode --->
	<cfif cb.isPageView()>
		<link rel="alternate" type="application/rss+xml" title="Pages's Recent Comments" href="#cb.linkPageRSS(comments=true,page=cb.getCurrentPage())#" />
	</cfif>

	<!--- styles --->
	<link  type="text/css"rel="stylesheet" href="#cb.layoutRoot()#/includes/css/normalize.css">
	<link  type="text/css"rel="stylesheet" href="#cb.layoutRoot()#/includes/css/main.css">
	<link  type="text/css"rel="stylesheet" href="#cb.layoutRoot()#/includes/css/style.css">
	
	<!--- javascript --->
	<script type="text/javascript" src="#cb.layoutRoot()#/includes/js/vendor/modernizr-2.6.2.min.js"></script>
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script  type="text/javascript" src="#cb.layoutRoot()#/includes/js/vendor/jquery-1.8.3.min.js"><\/script>')</script>
	<script  type="text/javascript" src="#cb.layoutRoot()#/includes/js/plugins.js"></script>
	<script type="text/javascript" src="#cb.layoutRoot()#/includes/js/main.js"></script>

	<!--- contentboxEvent --->
	#cb.event("cbui_beforeHeadEnd")#
</head>
<body>
	<!--[if lt IE 7]>
		<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
	<![endif]-->
	<!--- ContentBoxEvent --->
	#cb.event("cbui_afterBodyStart")#
	<div class="container">
		<!-- logo -->
		<div class="header"><h1><a href="#cb.linkHome()#" class="clean-link">#cb.siteName()#</a></h1></div>
		<!-- /logo -->

		<div class="main">
			<!-- menu -->
			<div id="mainmenu">
				#cb.quickView("_menu")#
			</div>
			<!-- /menu -->

			<!-- main -->
			<div class="content">
				<h2 class="inner">Blog</h2>
				<hr>
				#cb.mainView()#
			</div>
			<!-- /main -->

			<!-- side -->
			<div class="sidebar">
				#cb.quickView("_sidebar")#
			</div>
			<!-- /side -->

			<!--clear-->
			<div class="clear"></div>
			<!--/clear-->
		</div>

		<!-- footer -->
		<div class="footer">
			<hr>
			#cb.quickView("_footer")#
		</div>
		<!-- /footer -->
	</div>
	<!--- ContentBoxEvent --->
	#cb.event("cbui_beforeBodyEnd")#
</body>
</html>
</cfoutput>