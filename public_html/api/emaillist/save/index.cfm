<cfsetting enablecfoutputonly="true">
<cfsilent>
<cfinclude template="/config/settings.cfm">
<cfinclude template="/functions/functions.cfm">

<cfset requestBody = toString(getHttpRequestData().content)>

<cfset params = jsonToStruct(requestBody)>

<cfif isDefined("params.email")>

    <cfif isValid("email",params.email)>

    <!---See if this email address is already in the database--->
    <cfquery datasource = '#settings.dsn#' name="index">
        SELECT *
        FROM equipemaillist
        WHERE deletedAt IS NULL
        AND event = '#settings.event#'
        AND email = '#params.email#'
    </cfquery>

        <cfif !index.recordcount>

            <!---If this email address is not in the table, add it and any message information--->
            <cfquery datasource = '#settings.dsn#' name="index">
                INSERT INTO equipemaillist (email, message, name, event, createdAt, updatedAt)
                VALUES ("#params.email#", "#params.message#", "#params.name#", "#settings.event#", #now()#, #now()#)
            </cfquery>

            <cfset data = "TRUE">

        <cfelseif len(params.message)>

            <!---If the email address is in the table and there is a massage, update that record with the message information--->
            <cfquery datasource='#settings.dsn#'>
                UPDATE equipemaillist
                SET
                    message = '#params.message#',
                    name = '#params.name#',
                    updatedAt = #now()#
                WHERE email = '#params.email#'
                AND event = '#settings.event#'
            </cfquery>

            <cfmail
                subject = "An #getName("cap")# Contact message"
                to = "#settings.sendContactMessagesTo#"
                from = '#params.email#'>
                #params.message#
            </cfmail>

            <cfset data = "TRUE">

        <cfelse>

            <!---If the email address is in the table and there is not a new message, do not duplicate--->
            <cfset data = "DUPLICATE">

        </cfif>

     <cfelse>

        <!---If the email address is not a valid email address, do nothing except report invalid--->
        <cfset data = "INVALID">

     </cfif>

<cfelse>

    <!---If no email address is supplied, do nothing--->
    <cfset data = "FALSE">

</cfif>

</cfsilent>
<cfoutput>#data#</cfoutput>
</cfsetting>