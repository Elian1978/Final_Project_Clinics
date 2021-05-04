var city = "Orlando";

$.getJSON(
    "api.openweathermap.org/data/2.5/weather?q=" + 
    city + 
    ",uk&APPID=3873261c06ffc00808aa1406e8f633c0", 

function(data) {
console.log(data); 

var icon = 
    "http://api.openweathermap.org/img/w" + data.weather[0].icon + ".png";

var temp = Math.floor(data.main.temp);
var weather =  data.weather[0].main;

$(".icon").atrr("src", icon);
$(".weather").append(weather);
$(".temp").append(temp);
}
);

