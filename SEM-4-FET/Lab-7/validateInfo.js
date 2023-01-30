export function validateInfo(name){
    if(typeof(name) == typeof("String")){
        return `Name Verified, ${name}!`;
    }
    else{
        return `<br><br>Name Not Verified, ${name}!`;
    }
}