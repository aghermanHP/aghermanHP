function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
function startTime() {
  var today = new Date();
  var h = today.getHours();
  var m = today.getMinutes();
  var s = today.getSeconds();
  m = checkTime(m);
  s = checkTime(s);
  document.getElementById('myclock').innerHTML =
  h + ":" + m + ":" + s;
  var t = setTimeout(startTime, 5000);
}
function checkTime(i) {
  if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
  return i;
}
function validateForm() {
  var firstname = document.forms["myForm"]["fname"].value;
  if (firstname == "") {
    alert("Name must be filled out");
    return false;
  }
  var lastname = document.forms["myForm"]["lastname"]
  if (lastname == "" || x != string){
    alert ("Secund nume must bee with no . = - or other signes or not indroduced")
  }
  var password = document.forms["myForm"]["password"].value;
  if (password != number){
    alert ("just numbers!!!!!!");
    return false;
  }
}
//----------------------------------------------------------------
var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
} 