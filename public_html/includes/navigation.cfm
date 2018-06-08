<div class="navigation">
    <div class="navbar navbar-fixed-top" role="navigation">
        <div class="navbar-inner">
            <div class="container">

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <div class="logo">
                    <a href="#nav-header" class="roll"><span class="icon-normal-infinitive logo-icon"></span><span></span></a>
                </div><!-- /.logo -->

                <div class="navbar-collapse collapse" id="main-navbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#nav-header">Home</a></li>
                        <cfif scheduleIsOpen()>
                            <li><a href="#nav-schedule">Schedule</a></li>
                        </cfif>
                        <cfif livestreamIsOpen()>
                            <li><a data-remodal-target="modal-streams" class="cohortnavlink">Live Streams</a></li>
                        </cfif>    
                        <cfif pricingIsOpen()>
                            <li><a href="#nav-pricing">Register</a></li>
                        </cfif>
                        <cfif cohortsIsOpen()>
                            <li><a data-remodal-target="modal-cohorts" class="cohortnavlink">Cohorts</a></li>
                        <cfelse>
                        </cfif>    
                        <cfif staytunedIsOpen()>
                            <li>Stay tuned! Meals, cohorts etc coming soon.</li>
                        <cfelse>
                        <!---
                            <li><a href="#nav-why">About Access2018</a></li>
                        --->
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle">More <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <cfif childcareIsOpen()>
                                    <li><a href="#nav-childcare">Childcare</a></li>
                                </cfif>
                                <cfif settings.excursionsOpen>
                                <li>
                                    <a data-remodal-target="modal-excursions" class="cohortnavlink submenu">Excursions</a>
                                </li>
                                </cfif>
                                <cfif settings.mealsOpen>
                                <li>
                                    <a data-remodal-target="modal-meals" class="cohortnavlink submenu">Meals</a>
                                </li>
                                </cfif>
                                <cfif settings.speakersOpen>
                                <li>
                                    <a data-remodal-target="modal-speakers" class="cohortnavlink submenu">Speakers</a>
                                </li>
                                <li>
                                    <a data-remodal-target="modal-facilitators" class="cohortnavlink submenu">Facilitator Resources</a>
                                </li>
                                </cfif>
                                <cfif contactIsOpen()>
                                    <li><a href="#nav-contact">Contact</a></li>
                                </cfif>
                            </ul>
                        </li>
                        </cfif>
                    </ul>
                </div><!-- /.main-navigation -->
            </div><!-- /.container -->
          </div><!-- /.navbar-inner -->
    </div><!-- /.main-navigation -->
</div><!-- /.navigation -->

