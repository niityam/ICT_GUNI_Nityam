function hide(){
    var text = document.getElementsByClassName("text");
    for (var j = 0; j < text.length; j++) {
        text[j].style.display = "none";
    }
}
hide();

var coll = document.getElementsByClassName("collapsible");
for (var i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function() {  
      var content = this.nextElementSibling;
      if (content.style.display === "block") {
          content.style.display = "none";
      } 
      else {
        hide();
        content.style.display = "block";
      }
    });
  }