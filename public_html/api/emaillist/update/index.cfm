<cfsetting enablecfoutputonly="true">
<cfheader name="Content-Type" value="application/json">
<cfsilent>
<cfinclude template="/config/settings.cfm">
<cfinclude template="/functions/functions.cfm">

<cfif isDefined("params.id") && isDefined("params.email")>

    <cfquery datasource = '#settings.dsn#' name="index" result="results">
        UPDATE equipemaillist
        SET
        email = '#params.email#',
        updatedAt = #now()#
        WHERE id = #params.id#
    </cfquery>
    <cfif results.recordCount>
        <cfset data = "TRUE">
     <cfelse>
        <cfset data = "FALSE">
     </cfif>
<cfelse>
      <cfset data = "No ID AND EMAIL provided">
</cfif>

</cfsilent>
<cfoutput>#data#</cfoutput>
</cfsetting>