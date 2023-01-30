export function processPayment(amount){
    if(amount>1000){
        return `<br> ${amount}, Processed`;
    }
    else{
        return "<br> Payment Declined, Amount Less then Required Amount";
    }
}