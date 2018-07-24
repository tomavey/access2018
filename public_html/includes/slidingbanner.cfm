<div id="nav-header" class="header-wrapper">
    <div class="header">

        <div class="fullwidthbanner-container">
           <div class="fullwidthbanner">
                <ul class="unstyled">
                    <li class="first-slide" data-transition="fade">
                        <div class="sliderbackground">
                            <img class="sliderimage" src="assets/pictures/background-conference-10.jpg">
                        </div>

                        <div class="caption sfr caption-main" data-x="center" data-y="200" data-speed="900" data-start="0" data-easing="easeOutBack" fullwidthcentering="on">
                            <div class="header-item">
                            <cfif isMobile()>
                                <cfset mobilebannerheader = "mobilebannerheader">
                            <cfelse>
                                <cfset mobilebannerheader = "bannerheader">
                            </cfif>    
                            <cfoutput>
                                <div>

                            <cfif mobileIsOpen()>    
                                <div>                                    
                                    <a href="https://access2018.app" target="_blank"><p style="font-size:1.5em">Are you attending Access2018?<br/>Go to access2018.app</br>for the conference web app.</p></a>
                                    <a  target="_blank" href="https://access2018.app">
                                        <img src="https://charisfellowship.us/images/conference/exhibitors/pre-session_slides/Access2018_home_small.png"  height="200"/>
                                    </a>
                                                
<!---                                     <a target="_blank" href="https://livestream.com/access2017/access2017" class="uv-button uv-button--playstore" > --->
<!---                                         <img src="images/livestream.png"  height="43" width="150" /> --->
<!---                                     </a> --->
                                </div>
                            </cfif>    
                                    <h1 class="#mobilebannerheader#">#getName('l')#</h1>
                                    <h4>July 24- 26, 2018<cfif isMobile()><br/><cfelse>&nbsp;-&nbsp;</cfif> Grace Community Church<cfif isMobile()><br/></cfif>in Fremont, Ohio </h4>
                                </div><!-- /.title -->
                            </cfoutput>    

              <cfif showVideo() && len(getVimeoId()) && !isMobile()>
                                <div>
                                    <a class="play-video icon-normal-control-play fancybox-media" href="http://player.vimeo.com/video/<cfoutput>#getVimeoId()#</cfoutput>"></a>
                                </div>
              </cfif>
                            <!-- /.header-item -->

<cfinclude template="/includes/countdown.cfm">

                        </div><!-- /.caption -->
                    </li>

<cfif showSlide2()>

                    <li class="second-slide" data-transition="fade">
                        <div class="sliderbackground">
                        <img class="sliderimage" src="assets/pictures/background-erie.jpg" >
                        </div>

                        <div class="caption sfr caption-main" data-x="center" data-y="200" data-speed="900" data-start="0" data-easing="easeOutBack">
                            <div class="header-item">
                                <div>
                                    <h1>Lake Erie Region</h1>
                                    <h4>Minutes from Port Clinton and Lake Erie Islands</h4>
                                </div>
                            </div><!-- /.header-item -->

                        </div><!-- /.caption -->
                    </li>
</cfif>

<cfif showSlide3()>
                    <li class="third-slide" data-transition="fade">
                        <div class="sliderbackground">
                        <img class="sliderimage" src="assets/pictures/background-cedar_point.jpg">
                        </div>

                        <div class="caption sfr caption-main" data-x="center" data-y="300" data-speed="900" data-start="0" data-easing="easeOutBack">
                            <div class="header-item">
                                <div>
                                    <h1>Near Cedar Point</h1>
                                    <h4>Roller Coaster Capital of the World</h4>
                                    <p class="captionmore">
                                        72 rides</br>
                                        17 Roller Coasters</br>
                                        The most visited seasonal amusement park in the United States in 2015</br>
                                      </p>
                                </div>
                            </div><!-- /.header-item -->
                        </div>

                    </li>
</cfif>
                </ul><!-- /.revolution -->
           </div>
        </div>
    </div><!-- /.header -->
</div><!-- /.header-wrapper -->