    <div class="remodal" data-remodal-id="modal-speakers" ng-controller="mealsController">
    <button data-remodal-action="close" class="remodal-close"></button>
    <cfoutput>
    <h1>#getName('c')# Main Session Speakers</h1>
    </cfoutput>
    <cfset speakers = getSpeakers()>
    <cfoutput query="speakers">
      <div class="well" style="overflow:auto">
        <h3><cfif len(pedigree)>#pedigree# </cfif>#fname# #lname#</h3>
        <cfif len(picThumb)>
        <p style="float:left; margin-right:20px"><img src="http://www.fgbc.org/images/conference/instructors/#picThumb#" /></p>
        </cfif>
        <p>#bioWeb#</p>
      </div>
    </cfoutput>
    <br>
    <button data-remodal-action="cancel" class="remodal-cancel">Close</button>
    </div>