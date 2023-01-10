alert("Welcome to Nityam's Webiste")

function validateForm() {
    let x = document.forms["myForm"]["fname"].value;
    let y = document.forms["myForm"]["fage"].value;
      
    if (y >= 18) {
      alert("Eligible to Vote");
      return false;
    }
    else{
      alert("Can't vote");
    }
  }