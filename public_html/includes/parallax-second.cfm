<div class="parallax-wrapper parallax-second">
    <div class="parallax">
        <div class="inner">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 clearfix">
              <cfif showVideo() && len(getVimeoId())>
                        <span class="parallax-title">Video Preview</span>

                        <iframe class="video" src="http://player.vimeo.com/video/<cfoutput>#getVimeoId()#</cfoutput>"></iframe>
              <cfelse>
                <cfoutput>
                        <span class="parallax-title">#settings.name#... the video... Coming Soon</span>
                </cfoutput>        
              </cfif>
                    </div><!-- /.span12 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.inner -->
    </div><!-- /.parallax -->
</div><!-- /.parallax-wrapper -->
