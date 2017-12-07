<div id="nav-subscribe" class="subscribe-wrapper" ng-controller="subscribeController">
    <div class="subscribe">
        <div class="container">
            <div class="form row">
                <div class="col-sm-8 col-sm-offset-2 subscribe-background">
                    <h4 ng-cloak>{{message}}</h4>

                    <div class="row">
                        <div class="col-sm-10 col-sm-offset-1">
                            <form name="subscribeForm">
                                <div>
                                    <input type="email" class="subscription-field" name="subscribe" placeholder="Your e-mail" ng-model="subscribe.email">

                                    <button ng-click="addSubscriber()">
                                        <span class="icon-normal-right-arrow-small" ></span>
                                    </button>
                                </div>
                            </form>

                            <div class="success">
                                <p>
                                    Thank you for your interest.<br>
                                    <i class="icon icon-normal-heart-rounded"></i>
                                </p>
                            </div><!-- /.success -->
                        </div><!-- /.span6 -->
                    </div><!-- /.row -->
                </div><!-- /.span8 -->
            </div><!-- /.form -->
        </div><!-- /.container -->
    </div><!-- /.subscribe -->
</div><!-- /.subscribe-wrapper -->
