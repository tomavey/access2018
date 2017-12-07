<cfsetting enablecfoutputonly="true">
<cfheader name="Content-Type" value="application/json">
<cfsilent>
<cfinclude template="/config/settings.cfm">
<cfinclude template="/functions/functions.cfm">

<cfquery datasource = '#settings.dsn#' name="data">
    SELECT *
    FROM equipemaillist
    WHERE deletedAt IS NULL
    AND event = '#settings.event#'
    <cfif isDefined("params.id")>
        AND id = #params.id#
    </cfif>
    <cfif isDefined("params.email")>
        AND email = '#params.email#'
     </cfif>
</cfquery>

<cfset data = queryToJson(data)>
</cfsilent>
<cfoutput>#data#</cfoutput>
</cfsetting>

