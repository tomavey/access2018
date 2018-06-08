<!DOCTYPE html>
<html lang="en-US">

<head>

<cfinclude template="/config/settings.cfm">

<cfinclude template="/functions/functions.cfm">

<cfinclude template="/includes/head.cfm">

</head>

<body data-spy="scroll" data-target="#main-navbar" ng-app="access">

<cfinclude template="/includes/navigation.cfm"><!---Just top nav bar--->

<cfinclude template="/includes/slidingbanner.cfm">

<cfif cohortsIsOpen()>
    <cfinclude template="/includes/modal-cohorts.cfm"><!---Modal/popup for list of cohorts--->
</cfif>

<cfinclude template="/includes/modal-excursions.cfm"><!---Modal/popup for list of excursions--->

<cfinclude template="/includes/modal-facilitators.cfm"><!---Modal/popup for list of excursions--->

<cfinclude template="/includes/modal-meals.cfm"><!---Modal/popup for list of meals--->

<cfinclude template="/includes/modal-speakers.cfm"><!---Modal/popup for list of speakers--->

<cfinclude template="/includes/modal-streams.cfm"><!---Modal/popup for list of speakers--->

<cfinclude template="/includes/modal-childcareschedule.cfm"><!---Modal/popup for list of child care schedule--->

<cfif isMobile() && parallaxSecondIsOpen()>
    <cfinclude template="/includes/parallax-second.cfm">
</cfif>

<cfif featuresIsOpen()>
    <cfinclude template="/includes/features.cfm">
</cfif>

<cfif childcareIsOpen()>
    <cfinclude template="/includes/childcare.cfm">
</cfif>

<cfif scheduleIsOpen()>
    <cfinclude template="/includes/schedule.cfm">
</cfif>

<cfif parallaxFirstIsOpen()>
    <cfinclude template="/includes/parallax-first.cfm">
</cfif>

<cfif whycomeIsOpen()>
    <cfinclude template="/includes/whycome.cfm">
</cfif>

<cfif pricingIsOpen()>
    <cfinclude template="/includes/pricing.cfm">
</cfif>

<cfif parallaxSecondIsOpen() && !isMobile()>
    <cfinclude template="/includes/parallax-second.cfm">
</cfif>

<cfif testimonialsIsOpen()>
    <cfinclude template="/includes/testimonials.cfm">
</cfif>

<hr>

<cfif galleryIsOpen()>
    <cfinclude template="/includes/gallery.cfm">
</cfif>

<cfif partnersIsOpen()>
    <cfinclude template="/includes/partners.cfm">
</cfif>

<cfif parallaxThirdIsOpen()>
    <cfinclude template="/includes/lodging.cfm">
</cfif>

<div id="nav-contact" class="footer-wrapper">

    <cfif subscribeIsOpen()>
        <cfinclude template="/includes/subscribe.cfm">
    </cfif>

    <cfif contactIsOpen()>
        <cfinclude template="/includes/contact.cfm">
    </cfif>

    <cfif mapIsOpen()>
        <div id="map"></div><!-- /#map -->
    </cfif>

    <cfif socialIsOpen()>
        <cfinclude template="/includes/social.cfm">
    </cfif>

</div><!-- /.footer-wrapper -->

<cfinclude template="/includes/scripts.cfm">

<cfif showDebug()>
    <cfinclude template="/includes/debug.cfm">
    <cfdump var="#subscribeIsOpen()#">
</cfif>
</body>
</html>
