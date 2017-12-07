<!DOCTYPE html>
<html lang="en-US">

<head>

<cfinclude template="/config/settings.cfm">

<cfinclude template="/functions/functions.cfm">


</head>

<body data-spy="scroll" data-target="#main-navbar" ng-app="access">


<cfif scheduleIsOpen()>
    <cfinclude template="/includes/schedule.cfm">
</cfif>


</body>
</html>
