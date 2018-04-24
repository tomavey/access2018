                <div class="tab-pane fade in" id="tab-3">

<!------------------>
<!-----BREAKFAST---->
<!------------------>

                    <div class="row speaker" >
                        <div class="col-sm-2">
                            <div class="outer-border item">
                                <div class="middle-border">
                                    <img src="assets/pictures/meal-10.jpg" class="img-circle inner-border">
                                </div>
                            </div>
                        </div><!-- /.col-md-2 -->

                        <div class="col-sm-7">
                            <p class="name">Breakfast</p>
                            <p class="company">Student Center</p>
                            <p class="talk-title">Sponsored by a Charis Fellowship Ministry</p>
                            <p class="time"><span class="time-start">7:30</span> - 9:00</p>
                        </div><!-- /.col-md-7 -->

                        <hr>

                        <div class="col-sm-3">
                            <div class="about">
                                <h4>Charis Fellowship Ministry (TBD)</h4>

                                <p>
                                <a href="https://charisfellowship.us/">Charis Fellowship</a> is passionate about Biblical truth, relationship and the mission of planting churches, training leaders and doing good for the sake of the gospel. Charis Fellowship ministries help Charis Fellowship churches fulfill this passion.<cfoutput>#ticketRequired()#</cfoutput>
                                </p>
                            </div><!-- /.about -->
                        </div><!-- /.col-md-3 -->
                    </div><!-- /.speaker -->

<!------------------>
<!-----CELEBRATION---->
<!------------------>

                    <div class="row speaker">
                        <div class="col-sm-2">
                            <div class="outer-border item">
                                <div class="middle-border">
                                    <img src="assets/pictures/worship-9.jpg" class="img-circle inner-border">
                                </div>
                            </div>
                        </div><!-- /.col-md-2 -->

                        <div class="col-sm-7">
                            <p class="name">Celebration</p>
                            <p class="company">Main Auditorium</p>
                            <p class="talk-title">Worship-Celebrate-Access</p>
                            <p class="time"><span class="time-start">10:00</span> - 11:30</p>
                        </div><!-- /.col-md-7 -->

                        <hr>

                        <div class="col-sm-3">
                            <div class="about">
                                <h4>Celebration</h4>
                                <p>
                                Great Music, Great Speakers all about our GREAT GOD!
                                <cfif livestreamIsOpen()> 
                                    <a href="https://livestream.com/access2017/access2017">Watch the live stream here</a>
                                </cfif>
                                </p>
                            </div><!-- /.about -->
                        </div><!-- /.col-md-3 -->
                    </div><!-- /.speaker -->



<!------------------>
<!-----LUNCHEON---->
<!------------------>

                    <div class="row speaker">
                        <div class="col-sm-2">
                            <div class="outer-border item">
                                <div class="middle-border">
                                    <img src="assets/pictures/meal-11.jpg" class="img-circle inner-border">
                                </div>
                            </div>
                        </div><!-- /.col-md-2 -->

                        <div class="col-sm-7">
                            <p class="name">Lunch</p>
                            <p class="company">Student Center</p>
                            <p class="talk-title">Sponsored by the Charis Fellowship.</p>
                            <p class="time"><span class="time-start">12:00</span> - 1:30</p>
                        </div><!-- /.col-md-7 -->

                        <hr>

                        <div class="col-sm-3">
                        <cfoutput>
                            <div class="about">
                                <h4>Charis Fellowship Ministry</h4>

                                <p>
                                <a href="https://charisfellowship.us/">Charis Fellowship</a> is passionate about Biblical truth, relationship and the mission of planting churches, training leaders and doing good for the sake of the gospel. Charis Fellowship ministries help Charis Fellowship churches fulfill this passion. This lunch is also the official annual gathering of delegates from Charis Fellowship churches. <cfoutput>#ticketRequired()#</cfoutput>
                                </p>
                            </div><!-- /.about -->
                        </cfoutput>    
                        </div><!-- /.col-md-3 -->
                    </div><!-- /.speaker -->
                </div><!-- /.tab-1 -->
