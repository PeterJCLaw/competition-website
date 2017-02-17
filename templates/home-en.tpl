<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en-GB" data-ng-app="app">

<head>
	<title>Welcome to Student Robotics | Student Robotics</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<link rel="stylesheet" type="text/css" href="{$root_uri}../srweb/css/main.css" />
	<link rel="stylesheet" type="text/css" href="{$root_uri}../srweb/css/home.css" />
{if $smarty.const.COMPETITION_MODE}
	<link rel="stylesheet" type="text/css" href="{$root_uri}css/comp.css" />
	<link rel="stylesheet" type="text/css" href="{$root_uri}css/home_competition.css" />
{/if}

{if $smarty.const.COMPETITION_MODE}
	<script type="text/javascript" src="{$root_uri}js/polyfill.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.1/angular.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.1/angular-resource.min.js"></script>
	<script type="text/javascript">
		var API_ROOT = "/comp-api";
	</script>

	<script type="text/javascript" src="{$root_uri}js/lib/angularjs-ordinal-filter/ordinal.js"></script>
	<script type="text/javascript" src="{$root_uri}js/competition-utils.js"></script>
	<script type="text/javascript" src="{$root_uri}js/competition-filters.js"></script>
	<script type="text/javascript" src="{$root_uri}js/competition-resources.js"></script>
	<script type="text/javascript" src="{$root_uri}js/controllers/CompMode.js"></script>
{/if}
</head>

<body data-ng-controller="CompMode">
<div id="pageWrapper">
{if $smarty.const.COMPETITION_MODE}
	{include file="comp-home.tpl"}
{/if}

</div>

</body>

</html>
