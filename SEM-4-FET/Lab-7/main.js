import {validateInfo} from './validateInfo.js';
import {processPayment} from './processPayment.js';
import {calculateRating} from './calculateRating.js';

function mainfn(){
    document.body.innerHTML += validateInfo("Nityam");
    document.body.innerHTML += processPayment(1520);
    document.body.innerHTML += calculateRating(5);

    
    document.body.innerHTML += validateInfo(563);
    document.body.innerHTML += processPayment(963);
    document.body.innerHTML += calculateRating(3);
}
mainfn();