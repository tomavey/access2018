<div id="nav-schedule" class="speakers-wrapper" ng-controller="scheduleController">

    <div class="container">
        <h2>A Schedule Designed for You!</h2>
        <h4>Connect with those who need what you know and know what you need!</h4>
        <a href="/schedule-print2.cfm" target="_new" class="printschedule btn">Printable Version</a>


        <div class="speakers">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#tab-1" data-toggle="tab">Tuesday, July 25</a></li>
                <li><a href="#tab-2" data-toggle="tab">Wednesday, July 26</a></li>
                <li><a href="#tab-3" data-toggle="tab">Thursday, July 27</a></li>
            </ul>

            <div class="tab-content" ng-show="!isEmpty(scheduleItems)">

                <cfinclude template="/includes/schedule-tuesday.cfm">

                <cfinclude template="/includes/schedule-wednesday.cfm">

                <cfinclude template="/includes/schedule-thursday.cfm">

            </div><!-- /.tab-content -->
        </div><!-- /.speakers -->
    </div><!-- /.container -->

</div><!-- /.speakers-wrapper -->
