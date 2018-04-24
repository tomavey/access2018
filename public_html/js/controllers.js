var accessControllers = angular.module('accessControllers',[]);

console.log("accessControllers loaded");

accessControllers.controller('featuresController', function($scope){
    console.log("featuresController loaded");
    $scope.welcome = "Howdi!";
})

accessControllers.controller('scheduleController', function($scope,scheduleInfo){
    console.log("scheduleController loaded");
    $scope.welcome = "Howdi!";
    $scope.defaultMealsDescription = "Enjoy a great breakfast while learning about an exciting ministry. Ticket Required";
    $scope.defaultCohortsDescription = "Access Relationships Start Here!.";
    $scope.defaultWorshipDescription = "Great Music, Great Speakers all about our GREAT GOD!";
    function isEmpty(obj) {
        for(var key in obj) {
            if(obj.hasOwnProperty(key))
                return false;
        }
        return true;
    };
    console.log(scheduleInfo);
    $scope.scheduleItems = scheduleInfo;
})

accessControllers.controller('cohortsController', function($scope,courses){
    courses.list(function(courses){
        $scope.cohorts = courses;
    })
    $scope.modalheader = "Access2018 Cohorts";
    remodalSubmit = function(message){
        window.open("https://charisfellowship.us/selectcohorts");
    }
})

accessControllers.controller('mealsController', function($scope,meals){
    meals.list(function(data){
        $scope.meals = data;
    })
    $scope.modalheader = "Access2018 Meals";
    remodalSubmit = function(message){
        window.open("https://charisfellowship.us/conference/register/selectregtype");
    }
})

accessControllers.controller('contactMessageController', function($scope,contactMessages){
    $scope.contactFormMessage = "Any questions? Drop us a note";
    $scope.addContactMessage = function(){
        contactMessages.submit($scope.contact, function(data){
            console.log(data);
            if (data == "TRUE" ) {
                $scope.contactFormMessage = "Your message has been sent"
                }
                else if (data = "INVALID"){
                $scope.contactFormMessage = "Please provide a valid email address."
                };
        })
    }
});

accessControllers.controller('subscribeController', function($scope,subscriptions){
    $scope.message = "Subscribe to receive updates";
    $scope.addSubscriber = function(){
    console.log($scope.subscribe);
    $scope.subscribe.message = "";
    $scope.subscribe.name = "";
    subscriptions.submit($scope.subscribe,function(data){
        if (data === "TRUE") {
            $scope.message = $scope.subscribe.email + " has been subscribed.";
        }
        else if ( data === "DUPLICATE") {
            $scope.message = $scope.subscribe.email + " is already subscribed.";
        }
        else if ( data === "INVALID") {
            $scope.message = "Please enter a valid email address.";
        }
        else {
            $scope.message = $scope.subscribe.email + " has NOT been subscribed.";
        }
    });
    }
})

