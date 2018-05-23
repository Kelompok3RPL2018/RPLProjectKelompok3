

// window.onload = function() {start()};

// function start(){
//     var x = document.getElementsByClassName("slide");
//     x[0].className += " slideUp";
// }

function drop() {
    document.getElementById("drop-bar").classList.toggle("lihat");
}
function drop1(){
    document.getElementById("drop-bar1").classList.toggle("lihat");
}

// tutup dropdown jika tidak klik di bar 
window.onclick = function(e) {
  if (!e.target.matches('.dropdown-text')) {
    var dropbar = document.getElementById("drop-bar");
        if (dropbar.classList.contains('lihat')) {
        dropbar.classList.remove('lihat');
    }
    var dropbar1 = document.getElementById("drop-bar1");
        if (dropbar1.classList.contains('lihat')) {
        dropbar1.classList.remove('lihat');
      }
    }
}

window.onscroll = function() {Slide()};

function Slide() {  
    var y = document.getElementsByClassName("slide1");
    if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
        y[0].className += " slideRight";
    }
    if (document.body.scrollTop > 1100 || document.documentElement.scrollTop > 1100) {
        for(i=1;i<=y.length-3;i++)
       y[i].className += " slideLeft";
   }
   if (document.body.scrollTop > 3000 || document.documentElement.scrollTop > 3000) {
     y[y.length-1].className += " slideLeft";
     y[y.length-2].className += " slideRight";
    }
}

function Alert(){
    alert("Mohon Maaf, Saat ini Template belum tersedia");
}

function ScrollHome(){window.scroll({
    top: 0,  
    behavior: 'smooth' 
  });
  }
function ScrollAboutMe(){window.scroll({
    top: 610, 
    behavior: 'smooth' 
  });
}
function ScrollPortofolio(){window.scroll({
    top: 1450, 
    behavior: 'smooth' 
  });
}
function ScrollServiceWeb(){window.scroll({
    top: 2250, 
    behavior: 'smooth'
  });
  AnimateBox(); 
}
function ScrollCareer(){window.scroll({
    top: 2850, 
    behavior: 'smooth' 
  });
}
function ScrollContact(){window.scroll({
    top: 10000, 
    behavior: 'smooth' 
  });
}

function AnimateBox(){
$(document).ready(function(){
        var Abox = $("#AnimateBox");
        Abox.animate({height: '500px', opacity: '0.4'}, "slow");
        Abox.animate({width: '1348px', opacity: '0.8'}, "slow");
        Abox.animate({height: '400px', opacity: '0.4'}, "slow");
        Abox.animate({width: '800px', opacity: '0.8'}, "slow");
        Abox.animate({height: '700px', opacity: '0.4'}, "slow");
        Abox.animate({width: '1348px', opacity: '0.8'}, "slow");
    });
}
