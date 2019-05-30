function calculate()
{
  var weight = prompt ("enter the approximate weight of the goods in kg "); 
    var distance = prompt("enter an approximate distance in km");
  var cost = (+weight)*(+distance)/10 + 200;
    alert("estimated value equals " + cost + " UAH");
}
function sh() {

obj = document.getElementById("info");

if( obj.style.display == "block" ) { obj.style.display = "none"; } else { obj.style.display = "block"; }

}
function sh1() {

obj1 = document.getElementById("form");

if( obj1.style.display == "block" ) { obj1.style.display = "none"; } else { obj1.style.display = "block"; }

}

