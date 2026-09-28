function add(a, b){
    return a+b;
}
console.log(add(10,20))
 
//function2
 
function gross(netAmount, tax, discount){
 
//     tax=(tax/100)*netamount;
//    var netamount1=(discount/100)*netamount;
//     var tax1=(discount/100)*tax;
//     var gross1=netamount1+tax1;
//     console.log(gross1)
let taxAmount = (tax / 100) * netAmount;
 
let discountAmount = (discount / 100) * netAmount;
let discountOnTax = (discount / 100) * taxAmount;
 
let grossAmount =
    (netAmount - discountAmount) +
    (taxAmount - discountOnTax);
 
return grossAmount;
 
 
}
console.log(gross(50000,5,10))
 
//function 3
 
function sales(y1,y2,List,d){
    for(let i=y1;i<y2;i++)
    {
        for(let j=0;j<List.length;j++){
            List[j]=List[j]+(d/100)*List[j];
        }
    }
    return List;
}
console.log(sales(2020,2026,[400,500,450],10));
 
//function 4
function Market(risk,delivery,qulaity,spend,turnover){
   let risk1=risk*0.1;
   let delivey1=delivery*0.2;
   let qu1=qulaity*0.1;
   let sp1=spend*0.3;
   let tu1=turnover*0.3
   let total=(risk1+delivey1+qu1+sp1+tu1)/5;
   return total;
 
}
console.log(Market(56,65,72,108,114));
 
 
function Market(risk,delivery,qulaity,spend,turnover){
    let total=(risk*0.1+delivery*0.2+qulaity*0.1+spend*0.3+turnover*0.3)/5;
    return total;
}
console.log(Market(56,65,72,108,114));
 
var a =["ABC","DEF","GHI","JKL"];
var b=[ 123,456,789, 812];
var c=[];
for(let i=0;i<a.length;i++){
 
    // a[i]=a[i]+b[i];
    // c.push(a[i]);
    c[i]=a[i]+b[i].toString();
 
}
console.log(c);