<div class="content-wrapper" id="nav-whycome" ng-controller="cohortsController">

    <div class="content">
        <div class="content-inner">
            <div class="container">
                <div class="cycle-slideshow-fade">
                    <div class="cycle-pager"></div>

                    <div class="slide">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="image-box">
                                        <div class="image">
                                            <img src="assets/pictures/4.jpg" alt="">
                                        </div>
                                    </div>
                                </div><!-- /.image-box -->
                            <cfoutput>
                                <div class="col-sm-7">
                                    <h2 class="">Why you should come to #settings.name#?</h2>
                                    <h4 class="">And what will be waiting for you there</h4>
                                    <cfif cohortsIsOpen()>
                                        <p>
                                            Leaders need access! In the church, leaders need other Jesus-following-leaders who have the experiences and perspectives that help them advance. #getname('c')# will be intentionally designed to give leaders meaningful, ministry-changing access in ministry areas like:
                                        </p>
                                        <p>
                                            <span ng-repeat="cohort in cohorts">{{cohort.title}} &bull; </span>
                                        </p>
                                    <cfelse>
                                        <p>
                                            Leaders need access! In the church, leaders need other Jesus-following-leaders who have the experiences and perspectives that help them advance. #getname('c')# will be intentionally designed to give leaders meaningful, ministry-changing access.
                                        </p>
                                    </cfif>

                                </div><!-- /.span7 -->
                            </cfoutput>    
                            </div><!-- /.row -->
                        </div><!-- /.container -->
                    </div><!-- /.slide -->

                    <div class="slide">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="image-box">
                                        <div class="image">
                                            <img src="assets/pictures/2.jpg" alt="">
                                        </div>
                                    </div>
                                </div><!-- /.image-box -->

                                <div class="col-sm-7">
                                <cfoutput>
                                    <h2 class="">Your access... your conference!</h2>
                                    <h4 class="">Intentionally Interactive</h4>

                                    <p>
                                        We will create more time in the schedule for you to gather with other leaders who know what you need and need what you know. Call them cohorts, or round-tables, or interest groups but we will provide ample time for you to talk about what you are learning in ministry. We'd like to call #getname()# a "customized conference."
                                    </p>
                                    <p>
                                        <span ng-repeat="cohort in cohorts">{{cohort.title}} &bull; </span>
                                    </p>
                                </cfoutput>    
                                </div><!-- /.span7 -->
                            </div><!-- /.row -->
                        </div><!-- /.container -->
                    </div><!-- /.slide -->

                    <div class="slide">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="image-box">
                                        <div class="image">
                                            <img src="assets/pictures/3.jpg" alt="">
                                        </div>
                                    </div>
                                </div><!-- /.image-box -->

                                <div class="col-sm-7">
                                <cfoutput>
                                    <h2 class="">#getName()# will keep on giving!</h2>
                                    <h4 class="">And after #getName()# ends...</h4>

                                    <p>
                                        You will have new connections that can call anytime you learn something new or need a fresh idea. This can change your ministry!
                                    </p>
                                    <p>
                                        <span ng-repeat="cohort in cohorts">{{cohort.title}} &bull; </span>
                                    </p>
                                </cfoutput>    
                                </div><!-- /.span7 -->
                            </div><!-- /.row -->
                        </div><!-- /.container -->
                    </div><!-- /.slide -->

<!---
                    <div class="slide">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="image-box">
                                        <div class="image">
                                            <img src="assets/pictures/1.jpg" alt="">
                                        </div>
                                    </div>
                                </div><!-- /.image-box -->

                                <div class="col-sm-7">
                                <cfoutput>
                                    <h2 class="">#getName('c')# Cohorts</h2>
                                    <h4 class="">You will be able to attend any two of these...</h4>

                                    <p>
                                    </p>
                                </cfoutput>    
                                </div><!-- /.span7 -->
                            </div><!-- /.row -->
                        </div><!-- /.container -->
                    </div><!-- /.slide -->
--->
                </div><!-- ./cycle-slideshow-fade -->
            </div><!-- /.container -->
        </div><!-- /.content-inner -->
    </div><!-- /.content -->
</div><!-- /.content-wrapper -->
