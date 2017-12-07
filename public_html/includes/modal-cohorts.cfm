    <div class="remodal" data-remodal-id="modal-cohorts" ng-controller="cohortsController">
    <button data-remodal-action="close" class="remodal-close"></button>
    <h1><cfoutput>#getName("c")#</cfoutput> Cohorts</h1>
     <p>Cohorts are peer learning groups focused around various areas of ministries. Participants will have lots of time to talk about what is working, what is not, ask questions, discuss best practices and even work through issues together. Each cohort will be guided by trained facilitators.<br/> People who are registered for Access2017 should select two cohorts. </p>
    <p>Cohorts will happen in two groups and each cohort will extend through the times indicated below. Based on signups so far, we have scheduled cohorts in two blocks (A&B): 
			<br/>
			A-Cohorts will happen on Tuesday and Wednesday morning.
			<br/>
			B-Cohorts will happen on Wednesday afternoon and Thursday.
      </p>
      <p>
			Signup for Leadership Development, Descipleship and Next Gen Ministry are very high so we are repeating each of these.
      </p>
    <cfset cohorts = getCohorts()>
    <cfoutput query="cohorts">
      <div class="well">
        <h3>#title#</h3>
        <cfif len(subtype)>
          <p>#getSubtype(subtype)#</p>
        </cfif>
        <p>#descriptionlong#</p>
        <p>#getSubtypeDesc(subtype)#
        <p><a href='http://www.fgbc.org/selectcohorts' class='pull-right' target="_new">Sign Up</a></p>
      </div>
    </cfoutput>
    <br>
    <button data-remodal-action="cancel" class="remodal-cancel">Close</button>
    <button data-remodal-action="confirm" class="remodal-confirm">Sign Up</button>

    </div>