var accessServices = angular.module('accessServices',[])

        accessServices.factory('subscriptions', function($http,settings){
        var apiUrl = settings.apiHost() + "api/emaillist/";
        var apiUrlPost = settings.apiPostAnnounce();
        return {
          list: function (callback){
            $http({
              method: 'GET',
              url: apiUrl,
              cache: false
            }).success(callback)
            .error(function(data,status){
              console.log(data);
              console.log(status)
            });
          },
          find: function(id, callback){
            $http({
              method: 'GET',
              url: apiUrl+"?id=" + id,
            }).success(callback)
            .error(function(data,status){
              console.log(data);
              console.log(status)
            });
          },
          submit: function(subscription,callback){
            $http({
              method: 'POST',
              url: apiUrlPost,
              data: subscription,
            })
            .success(callback)
            .error(function(data,status){
              console.log(data);
              console.log(status)
            });
            console.log(subscription);
          }
        };
      });

   accessServices.factory("contactMessages",function($http,settings){
     var apiUrl = settings.apiHost() + "api/emaillist/";
     var apiUrlPost = settings.apiPostAnnounce();
    return{
          submit: function(subscription,callback){
            $http({
              method: 'POST',
              url: apiUrlPost,
              data: subscription,
            })
            .success(callback)
            .error(function(data,status){
              console.log(data);
              console.log(status)
            });
            console.log(subscription);
          }
        }
   })

   accessServices.factory('courses', function($http,settings){
        var apiUrl = settings.apiGetWorkshops();
        return {
          list: function (callback){
            $http({
              method: 'GET',
              url: apiUrl,
              cache: false
            }).success(callback)
            .error(function(data,status){
              console.log(data);
              console.log(status)
            });
          }
        };
      });

   accessServices.factory('meals', function($http,settings){
        var apiUrl = settings.apiGetMeals();
        return {
          list: function (callback){
            $http({
              method: 'GET',
              url: apiUrl,
              cache: false
            }).success(callback)
            .error(function(data,status){
              console.log(data);
              console.log(status)
            });
          }
        };
      });

   var defaultScheduleInfo = {
            breakfast: {
                image: "assets/pictures/meal-4.jpg",
                type: "Breakfast",
                title: "Meal with a mission!",
                location: "Student Center",
                sideTitle: "Sponsored Meal",
                sideDescription: "Enjoy a great breakfast while learning about an exciting ministry. Ticket Required!",
                timeStart: "07:30",
                timeEnd: "9:00"
            },
            lunch: {
                image: "assets/pictures/meal-1.jpg",
                type: "Lunch",
                title: "Meal with a mission!",
                location: "Student Center",
                sideTitle: "Sponsored Meal",
                sideDescription: "Enjoy a great lunch while learning about an exciting ministry. Ticket Required!",
                timeStart: "11:45",
                timeEnd: "01:30"
            },
            dinner: {
                image: "assets/pictures/meal-2.jpg",
                type: "Dinner",
                title: "Meal with a mission!",
                location: "Student Center",
                sideTitle: "Sponsored Meal",
                sideDescription: "Enjoy a great lunch while learning about an exciting ministry. Ticket Required!",
                timeStart: "05:00",
                timeEnd: "06:30"
            },
            celebrationA: {
                image: "assets/pictures/worship-1.jpg",
                type: "Celebration",
                title: "Worship-Celebrate-Access",
                location: "Main Auditorium",
                sideTitle: "Celebration",
                sideDescription: "Great Music, Great Speakers all about our GREAT GOD!",
                timeStart: "09:30",
                timeEnd: "10:45"
            },
            celebrationB: {
                image: "assets/pictures/worship-2.jpg",
                type: "Celebration",
                title: "Worship-Celebrate-Access",
                location: "Main Auditorium",
                sideTitle: "Celebration",
                sideDescription: "Great Music, Great Speakers all about our GREAT GOD!",
                timeStart: "07:00",
                timeEnd: "09:00"
            },
            cohortA: {
                image: "assets/pictures/cohort-2.jpg",
                type: "Cohorts",
                title: "Forming Access Relationships",
                location: "Various Locations",
                sideTitle: "Cohorts",
                sideDescription: "Access Relationships Start Here!",
                timeStart: "09:30",
                timeEnd: "11:30"
            },
            cohortB: {
                image: "assets/pictures/cohort-3.jpg",
                type: "Cohorts",
                title: "Forming Access Relationships",
                location: "Various Locations",
                sideTitle: "Cohorts",
                sideDescription: "Access Relationships Start Here!",
                timeStart: "02:00",
                timeEnd: "04:00"
            }
   };

   accessServices.constant("scheduleInfo",{
        tuesday:{
            breakfast: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.breakfast));
                scheduleInfo.title = "Sponsored by Grace Connect",
                scheduleInfo.image = "assets/pictures/meal-1.jpg";
                scheduleInfo.timeStart = "07:30";
                scheduleInfo.timeEnd = "09:00";
                scheduleInfo.sideTitle = "Grace Connect";
                scheduleInfo.sideDescription = "<a href='http://graceconnect.us/' target='_new'>GraceConnect</a> is a ministry of the Brethren Missionary Herald Company, which has a mission of building bridges of communication between the people and churches of the Fellowship of Grace Brethren Churches.";
                return scheduleInfo;
            }(),
            lunch: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.lunch));
                scheduleInfo.title = "Sponsored by the FGBC",
                scheduleInfo.image = "assets/pictures/meal-2.jpg";
                scheduleInfo.timeStart = "12:30";
                scheduleInfo.timeEnd = "02:30";
                scheduleInfo.sideTitle = "Welcome to Access2017!";
                scheduleInfo.sideDescription = "What is access2017? Who is the FGBC? How does this movement work? Everyone is encouraged to join us for lunch.";
                return scheduleInfo;
            }(),
            dinner: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.dinner));
                scheduleInfo.title = "Sponsored by Grace College and Seminary",
                scheduleInfo.image = "assets/pictures/meal-3.jpg";
                scheduleInfo.timeStart = "05:15";
                scheduleInfo.timeEnd = "06:30";
                scheduleInfo.sideTitle = "Grace College and Seminary";
                scheduleInfo.sideDescription = "<a href='http://www.grace.edu' target='_new'>Grace College & Seminary</a> is an evangelical Christian community of higher education which applies biblical values in strengthening character, sharpening competence and preparing for service.";
                return scheduleInfo;
            }(),
            celebrationA: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.celebrationA));
                scheduleInfo.image = "assets/pictures/worship-1.jpg";
                return scheduleInfo;
            }(),
            celebrationB: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.celebrationB));
                scheduleInfo.image = "assets/pictures/worship-2.jpg";
                return scheduleInfo;
            }(),
            cohortA: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.cohortA));
                scheduleInfo.sideTitle = "A-Cohorts",
                scheduleInfo.sideDescription = "Access Relationships Start Here! Each attendee can participate in two cohorts.  A-Cohorts meet Tuesday morning, afternoon and Wednesday morning. Use the link at the top of this page to see the list or click <a href='http://www.fgbc.org/conference.courses/list/cohort' target='_new'>HERE.</a>",
                scheduleInfo.image = "assets/pictures/cohort-1.jpg";
                scheduleInfo.timeStart = "11:15";
                scheduleInfo.timeEnd = "12:15";
                return scheduleInfo;
            }(),
            cohortB: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.cohortB));
                scheduleInfo.sideTitle = "A-Cohorts",
                scheduleInfo.sideDescription = "Access Relationships Start Here! Each attendee can participate in two cohorts.  A-Cohorts meet Tuesday morning, afternoon and Wednesday morning. Use the link at the top of this page to see the list or click <a href='http://www.fgbc.org/conference.courses/list/cohort' target='_new'>HERE.</a>",
                scheduleInfo.image = "assets/pictures/cohort-2.jpg";
                scheduleInfo.timeStart = "03:00";
                scheduleInfo.timeEnd = "05:00";
                return scheduleInfo;
            }()
        },
        wednesday:{
            breakfast: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.breakfast));
                scheduleInfo.title = "Sponsored by the Association of Grace Brethren Ministers",
                scheduleInfo.image = "assets/pictures/meal-4.jpg";
                scheduleInfo.sideTitle = "Association of Grace Brethren Ministers";
                scheduleInfo.sideDescription = "<a href='http://www.agbm.org' target='_new'>Association of Grace Brethren Ministers</a>: The role of the pastor and the pressures that come from that role are unique.  Being a pastor is challenging, thrilling, rewarding and, yes, sometimes exhausting.  The AGBM exists to keep our members healthy in every aspect of this calling.";
                return scheduleInfo;
            }(),
            lunch: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.lunch));
                scheduleInfo.title = "Sponsored by Encompass World Partners",
                scheduleInfo.image = "assets/pictures/meal-5.jpg";
                scheduleInfo.sideTitle = "Encompass World Partners";
                scheduleInfo.sideDescription = "<a href='http://www.encompassworld.org' target='_new'>The Encompass World Partners</a>: The Encompass family engages in a mission to glorify God and make Him known among the nations by investing in and equipping individuals since 1900.";
                return scheduleInfo;
            }(),
            dinner: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.dinner));
                scheduleInfo.title = "Sponsored by Grace Brethren Investment Foundation and the Eagle Commission",
                scheduleInfo.image = "assets/pictures/meal-6.jpg";
                scheduleInfo.sideTitle = "Encompass World Partners";
                scheduleInfo.sideDescription = "<a href='http://www.gbif.org' target='_new'>The Grace Brethren Investment Foundation</a> was organized in 1955 to provide affordable mortgage financing for growing churches and ministry organizations affiliated with the Fellowship of Grace Brethren Churches. The <a href='http://www.eaglecommission.org/'>Eagle Commission</a> was formed to serve as a strategic link between the people of our Grace Brethren Churches and our military chaplains around the world.";
                return scheduleInfo;
            }(),
            celebrationA: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.celebrationA));
                scheduleInfo.image = "assets/pictures/worship-3.jpg";
                return scheduleInfo;
            }(),
            celebrationB: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.celebrationB));
                scheduleInfo.image = "assets/pictures/worship-3.jpg";
                return scheduleInfo;
            }(),
            cohortA: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.cohortA));
                scheduleInfo.sideTitle = "A-Cohorts",
                scheduleInfo.sideDescription = "Access Relationships Start Here! Each attendee can participate in two cohorts. A-Cohorts meet Tuesday morning, afternoon and Wednesday morning. Use the link at the top of this page to see the list or click <a href='http://www.fgbc.org/conference.courses/list/cohort' target='_new'>HERE.</a>",
                scheduleInfo.image = "assets/pictures/cohort-3.jpg";
                return scheduleInfo;
            }(),
            cohortB: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.cohortB));
                scheduleInfo.sideTitle = "B-Cohorts",
                scheduleInfo.sideDescription = "Access Relationships Start Here! Each attendee can participate in two cohorts.  B-Cohorts meet Wednesday afternoon and Thursday morning and afternoon.  Use the link at the top of this page to see the list or click <a href='http://www.fgbc.org/conference.courses/list/cohort' target='_new'>HERE.</a>",
                scheduleInfo.image = "assets/pictures/cohort-4.jpg";
                return scheduleInfo;
            }()
        },
        thursday:{
            breakfast: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.breakfast));
                scheduleInfo.title = "Sponsored by CE National",
                scheduleInfo.image = "assets/pictures/meal-7.jpg";
                scheduleInfo.sideTitle = "CE National";
                scheduleInfo.sideDescription = "<a href='http://www.cenational.org' target='_new'> CE National's </a> purpose is to be a catalyst for all believers to be trained and mobilized to be 'on mission.' This is done by : Impacting the Rising Generation, Reaching Neglected People, and Equipping Biblical Leadership.";
                return scheduleInfo;
            }(),
            lunch: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.lunch));
                scheduleInfo.title = "Sponsored by the Fellowship of Grace Brethren Churches",
                scheduleInfo.image = "assets/pictures/meal-1.jpg";
                scheduleInfo.sideTitle = "Fellowship of Grace Brethren Churches";
                scheduleInfo.sideDescription = "This is the annual business meeting of the <a href='http://www.fgbc.org' target='_new'> Fellowship of Grace Brethren Churches</a>. Delegates are encouraged to attend, everyone is welcome!";
                return scheduleInfo;
            }(),
            dinner: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.dinner));
                scheduleInfo.title = "Sponsored by the GB Canada",
                scheduleInfo.image = "assets/pictures/meal-2.jpg";
                scheduleInfo.sideTitle = "GB Canada";
                scheduleInfo.sideDescription = "The purpose of <a href='http://www.gbcanada.ca/' target='_new'>GBCanada USA</a> is to fulfill our vision by stimulating and supporting a movement of church planting across Canada.";
                return scheduleInfo;
            }(),
            celebrationA: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.celebrationA));
                scheduleInfo.image = "assets/pictures/worship-4.jpg";
                return scheduleInfo;
            }(),
            celebrationB: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.celebrationB));
                scheduleInfo.image = "assets/pictures/worship-4.jpg";
                return scheduleInfo;
            }(),
            cohortA: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.cohortA));
                scheduleInfo.sideTitle = "B-Cohorts",
                scheduleInfo.sideDescription = "Access Relationships Start Here! Each attendee can participate in two cohorts.  B-Cohorts meet Tuesday morning, afternoon and Wednesday morning. Use the link at the top of this page to see the list or click <a href='http://www.fgbc.org/conference.courses/list/cohort' target='_new'>HERE.</a>",
                scheduleInfo.image = "assets/pictures/cohort-5.jpg";
                return scheduleInfo;
            }(),
            cohortB: function(){
                var scheduleInfo = JSON.parse(JSON.stringify(defaultScheduleInfo.cohortB));
                scheduleInfo.sideTitle = "B-Cohorts",
                scheduleInfo.sideDescription = "Access Relationships Start Here! Each attendee can participate in two cohorts.  B-Cohorts meet Wednesday afternoon and Thursday morning and afternoon. Use the link at the top of this page to see the list or click <a href='http://www.fgbc.org/conference.courses/list/cohort' target='_new'>HERE.</a>",
                scheduleInfo.image = "assets/pictures/cohort-6.jpg";
                return scheduleInfo;
            }()
        }
    })


accessServices.constant("settings",{
        apiHost : function(){
        if (location.hostname == "access:8888"){
          return "http://access:8888/api/emaillist";
        }
        else
        {
          return "http://access2017.com/";
        }
      },
      apiPostAnnounce: function(){
        if (location.host == "access:8888"){
          return "http://access:8888/api/emaillist/save/"
        }
        else
        {
          return "http://.com/api/emaillist/save/"
        }
      },
      apiGetWorkshops: function(){
        if (location.host == "access:8888"){
          return "http://localhost:8888/index.cfm/api/courses"
        }
        else
        {
          return "http://fgbc.org/api/courses"
        }
      },
      apiGetMeals: function(){
        if (location.host == "access:8888"){
          return "http://localhost:8888/index.cfm/api/meals"
        }
        else
        {
          return "http://fgbc.org/api/meals"
        }
      },
})