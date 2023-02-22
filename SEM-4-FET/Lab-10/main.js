function fSubmit(){
    let name = document.form1.name.value;
    let mobileno = document.form1.mobileno.value;
    let pass = document.form1.pass.value;
    let passconfirm = document.form1.passconfirm.value;
    lenmobile = mobileno.length;
    let flag = 0;
    document.getElementById("resp").innerHTML = "";
    if(lenmobile!=10){
        document.getElementById("resp").innerHTML += "Mobile number invalid, Number should be of 10 Digits </br>";
    }
    else{
        flag = flag + 1;
    }
    if(pass.length<8 || pass.length>12){
        document.getElementById("resp").innerHTML += "Password Length Should between 8 to 12 Character </br>";
    }
    else{
        if(pass != passconfirm){
            document.getElementById("resp").innerHTML += "Password Unmatched </br>";
        }
        else{
            flag = flag + 1;
        }
    }
    let nameflag = 0
    for(let c of name){
        c = parseInt(c)
        if(Number.isInteger(c) == 1){
            console.log(Number.isInteger(c))
            nameflag = 1;
            document.getElementById("resp").innerHTML += "Name Should Not Contain Number </br>";
            break;
        }
    }
    if(flag==2 && nameflag==0){
        document.getElementById("resp").innerHTML = "";
        alert("Form Validated")
    } 

    return false;
}