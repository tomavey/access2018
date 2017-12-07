    <div class="remodal" data-remodal-id="modal-meals" ng-controller="mealsController">
    <button data-remodal-action="close" class="remodal-close"></button>
    <cfoutput>
      <h1>#getName('c')# Meals</h1>
    </cfoutput>
    <cfset meals = getMeals()>
    <div class="text-center"><p>Meals are sponsored by National and Cooperating Ministries of the FGBC.</p><p>Tickets are required. Purchase your tickets in the <a href="http://www.fgbc.org/conference.-register/selectregtype" target="_new">registration center</a>.</p>
    </div>
    <cfoutput query="meals">
      <div class="well">
        <h3>#buttondescription#</h3>
        <p>#description#</p>
        <p>#DollarFormat(cost)#</p>
      </div>
    </cfoutput>
    <br>
    <button data-remodal-action="cancel" class="remodal-cancel">Close</button>
    <button data-remodal-action="confirm" class="remodal-confirm">Register and Purchase Meal Tickets </button>
    </div>