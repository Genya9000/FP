function calculate()
{
  var weight = prompt ("Approximate weight of the goods in kg/Приблизительный вес в кг"); 
    var distance = prompt("Approximate distance in km/Приблизительное расстояние в км");
  var cost = (+weight)*(+distance)/10 + 200;
    alert("Estimated value equals/Предпологаемая стоймость равна " + cost + " UAH");
}
function sh() {

obj = document.getElementById("info");

if( obj.style.display == "block" ) { obj.style.display = "none"; } else { obj.style.display = "block"; }

}
function sh1() {

obj1 = document.getElementById("form");

if( obj1.style.display == "block" ) { obj1.style.display = "none"; } else { obj1.style.display = "block"; }

}
function sh2() {

obj1 = document.getElementById("contact");

if( obj1.style.display == "block" ) { obj1.style.display = "none"; } else { obj1.style.display = "block"; }

}
// function locale() {
//   obj = document.getElementsByTagName("fmt:setLocale");
//   if(obj.value="en") {obj.value="ru";}
//
// }
function getContextPath() {
    return "${pageContext.request.contextPath}";
}
$(function (){
    $('#lang').find('a').click(function(e){
        e.preventDefault();
        var href = $(this).attr('href')
        $.post(getContextPath() + "/locale", {locale:href}, function(){
            location.reload();
        });
    });
})

