import jQuery from "jquery"
global.$ = global.jQuery = jQuery
window.$ = window.jQuery = jQuery


jQuery(function(){
    alert ('Hola Bienvenido usted es el Usuario 10.000 te ganaste una Hamburguesa!!')
    console.log(jQuery)
    console.log($)
  })

var city = "Guapiles";

$.getJSON(
    "https://api.openweathermap.org/data/2.5/weather?q=" + 
    city + 
    "&APPID=3873261c06ffc00808aa1406e8f633c0&units=metric", 

function(data) {
    console.log("FUNCIONA");
console.log(data); 

var icon = "http://openweathermap.org/img/w/" + data.weather[0].icon + ".png";

var temp = Math.floor(data.main.temp);
var weather =  data.weather[0].main;

$(".icon").attr("src", icon);
$(".weather").append(weather);
$(".temp").append(temp);
}
);

