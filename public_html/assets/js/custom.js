$(document).ready(function(){

var today = new Date();

// My target date is this month 30th 9.25pm
var target = new Date(today);
target.setDate(24);
target.setFullYear(2018);
target.setMonth(6);
target.setHours(10,00,0,0);;

// Countdown start from yesterday
var yesterday = new Date(today);
yesterday.setDate(today.getDate() - 1);
yesterday.setHours(0,0,0,0);;

console.log(target);
console.log(today);

$('.countdown').final_countdown({
        'start': yesterday.getTime() / 1000,
        'end': target.getTime() / 1000,
        'now': today.getTime() / 1000,
    seconds: {
        borderColor: '#8ef58e',
        borderWidth: '9'
    },
    minutes: {
        borderColor: '#ff8d72',
        borderWidth: '9'
    },
    hours: {
        borderColor: '#69ccff',
        borderWidth: '9'
    },
    days: {
        borderColor: '#ffd35c',
        borderWidth: '9'
    }
});

var timeIncrement = 50;

function sprite2($this){
    $this.css({"background-position": "0px -58px"});
}

function sprite3($this){
    setTimeout(function(){$this.css({"background-position": "0px -121px"})},timeIncrement)
}

function sprite4($this){
    setTimeout(function(){$this.css({"background-position": "0px -184px"})},timeIncrement*2)
}

function sprite5($this){
    setTimeout(function(){$this.css({"background-position": "0px -243px"})},timeIncrement*3)
}

function sprite6($this){
    setTimeout(function(){$this.css({"background-position": "0px -306px"})},timeIncrement*4)
}

$(".logo a").mouseenter(function(){
    var $this = $(this);
    sprite2($this);
    sprite3($this);
    sprite4($this);
    sprite5($this);
    sprite6($this);
}).mouseleave(function(){
    $(this).css({"background-position": "0px 5px"});
});

$(document).on('confirmation', '.remodal', function () {
  remodalSubmit('Confirmation button is clicked');
});

})