<!DOCTYPE html>
<html lang="en-US">
<head>
<style>
/* http://meyerweb.com/eric/tools/css/reset/
   v2.0 | 20110126
   License: none (public domain)
*/

@media pdf
{
    .no-print, .no-print *
    {
        display: none !important;
    }
    body
    {
        margin-right:20px;
     }

}

@page {
  size: A4 landscape;
}

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed,
figure, figcaption, footer, header, hgroup,
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
    display: block;
}
body {
    line-height: 1.1;
}
ol, ul {
    list-style: none;
}
blockquote, q {
    quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
    content: '';
    content: none;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
/* END OF RESET */

hr {
    display:none;
}

.about {
    display:none;
}

img {
    display:none;
}

.speaker {
    border: 2px solid gray;
    margin:20px auto;
    padding:10px;
    text-align:center;
}

.dayheader {
    text-align:center;
    font-size: 2em;
    font-weight: bold;
    margin-top:30px;

}

h2, h4 {
    text-align:center;
    font-size:2.5em;
}

h4 {
    font-size: 1.5em;
}

.eachday {
    width:500px;
    margin:0 auto;
}

.name {
    font-weight:bold;
    font-size: 1.3em;
}


</style>

<cfinclude template="/config/settings.cfm">

<cfinclude template="/functions/functions.cfm">


</head>

<body data-spy="scroll" data-target="#main-navbar" ng-app="access">

<div id="nav-schedule" class="speakers-wrapper" ng-controller="scheduleController">

    <div class="container">
        <h2>Access2018 Schedule</h2>
        <h4>Connect with those who need what you know and know what you need!</h4>

        <div class="speakers">

            <div class="table">

                <div class="eachday">

                    <div class="dayheader">
                        Tuesday, July 24
                    </div>

                    <cfinclude template="/includes/schedule-tuesday.cfm">

                </div>

                <div class="eachday">

                    <div class="dayheader">
                        Wednesday, July 25
                    </div>

                    <cfinclude template="/includes/schedule-wednesday.cfm">

                </div>

                <div class="eachday">

                    <div class="dayheader">
                        Thursday, July 26
                    </div>

                    <cfinclude template="/includes/schedule-thursday.cfm">

                </div>

            </div><!-- /.tab-content -->
        </div><!-- /.speakers -->
    </div><!-- /.container -->

</div><!-- /.speakers-wrapper -->


</body>
</html>
