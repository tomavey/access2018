    <div class="footer container" ng-controller="contactMessageController">
        <div class="footer-inner">
            <div class="row">
                <div class="item col-md-4">
                    <h2>Contact us</h2>

                    <address>
                        <div class="icon icon-normal-pointer"></div>
                        <div class="address-content">
                            <span class="title"><strong>Charis Fellowship</strong></span>
                            <p>PO Box 384, Winona Lake</p>
                            <p>IN 46590, United States</p>
                        </div>
                    </address>

                    <address>
                        <div class="icon icon-normal-mail"></div>
                        <div class="address-content">
                            <cfoutput>
                                <a href="mailto:#settings.sendContactMessagesTo#" class="e-mail">#settings.sendContactMessagesTo#</a>
                            </cfoutput>
                        </div>
                        <br>

                        <div class="icon icon-normal-phone"></div>
                        <div class="address-content">
                            <span class="title">(574) 269 1269</span>
                        </div>
                    </address>

<!---
                    <address>
                        <div class="icon icon-normal-map-pointer"></div>
                        <div class="address-content">
                            <a class="btn btn-grey">Show on Google maps</a>
                        </div>
                    </address>
--->
                </div><!-- /.item -->

                <div class="item col-md-8">
                    <h2 ng-cloak>{{contactFormMessage}}</h2>

                    <form name="contactForm" class="contact-form footer-form" method="post">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="control-group">
                                    <div class="controls">
                                        <input type="text" name="name" placeholder="Your name" required="required" ng-model="contact.name">
                                        <span class="icon icon-normal-profile-male"></span>
                                    </div><!-- /.controls -->
                                </div><!-- /.control-group -->
                            </div><!-- /.span4 -->

                            <div class="col-sm-6">
                                <div class="control-group">
                                    <div class="controls">
                                        <input type="email" name="email" placeholder="Your e-mail" required="required" ng-model="contact.email">
                                        <span class="icon icon-normal-mail"></span>
                                    </div><!-- /.controls -->
                                </div><!-- /.control-group -->
                            </div><!-- /.span4 -->
                        </div><!-- /.row -->

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="control-group">
                                    <div class="controls">
                                        <textarea name="message" placeholder="Your message" required="required" ng-model="contact.message"></textarea>
                                        <span class="icon icon-normal-pencil"></span>
                                    </div><!-- /.controls -->
                                </div><!-- /.control-group -->
                            </div><!-- /.span8 -->
                        </div><!-- /.row -->

                        <div class="form-actions">
                            <input type="submit" class="btn btn-send col-md-3" value="Send" ng-click="addContactMessage()">
                        </div><!-- /.form-actions -->
                    </form><!-- /.footer-form -->
                </div><!-- /.item -->
            </div><!-- /.row -->
        </div><!-- /.footer-inner -->
    </div><!-- /.footer -->
