    <div class="remodal" data-remodal-id="modal-excursions" ng-controller="mealsController">
    <button data-remodal-action="close" class="remodal-close"></button>
    <cfoutput>
    <h1>#getName('c')# Excursions</h1>
    </cfoutput>
    <cfset excursions = getExcursions()>
    <div class="text-center"><p>Northwest Ohio is a favorite vacation location for folks from the Midwest with nearby Port Clinton and Cedar Point. We are pleased to offer the following pre and post-Access2017 excursion options.</p><p>Purchase your tickets in the <a href="https://charisfellowship.us/conference/register/selectregtype" target="_new">registration center</a>.</p>
    </div>
    <cfoutput query="excursions">
      <div class="well">
        <h3>#buttondescription#</h3>
        <p>#description#</p>
        <p>#DollarFormat(cost)#</p>
      </div>
    </cfoutput>
    <br>
    <button data-remodal-action="cancel" class="remodal-cancel">Close</button>
    <button data-remodal-action="confirm" class="remodal-confirm">Register and Purchase Tickets </button>
    </div>