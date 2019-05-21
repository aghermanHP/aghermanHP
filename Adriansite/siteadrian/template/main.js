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
<<<<<<< HEAD
  h + ":" + m + ":" + s;
  var t = setTimeout(startTime, 5000);
=======
      h + ":" + m + ":" + s;
  var t = setTimeout(startTime, 500);
>>>>>>> cf905c342b154c29e6d2fdaefbba2a6d4c231c9c
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
<<<<<<< HEAD
//----------------------------------------------------------------
var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
=======
// ________________________________________slider
var slideIndex = 1;
showSlides(slideIndex);

>>>>>>> cf905c342b154c29e6d2fdaefbba2a6d4c231c9c
function plusSlides(n) {
  showSlides(slideIndex += n);
}

<<<<<<< HEAD
// Thumbnail image controls
=======
>>>>>>> cf905c342b154c29e6d2fdaefbba2a6d4c231c9c
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
<<<<<<< HEAD
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
} 
=======
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}

document.getElementById('year').appendChild(document.createTextNode(new Date().getFullYear()));
>>>>>>> cf905c342b154c29e6d2fdaefbba2a6d4c231c9c
