console.log("welcome");
 
 var x=10;
 console.log(x);
 console.log(typeof(x));
 
  var y=true;
  console.log(typeof(y));
 
  var fruits=["apple" ,"mango","banana","orange"];
  console.log(fruits);
  console.log(fruits[1]);
  console.log(fruits.length-1);
  console.log(fruits.push("grapes"));
  console.log(fruits);
  fruits.splice(2,1,"ABC");// At pos 2 add ABC and delete 1 ele
  console.log(fruits);
  fruits.splice(2,1)// At pos 2 remove 1 element , 0 based indexing
  console.log(fruits);
 
  //for loop
 
  for(let i=0;i<=fruits.length;i++)
  {
    var ele= fruits[i];
    console.log("At pos "+ i + "items is" + ele);
  }
 
  //structure
 
  var Employee={
    name:'Anu',
    place:'Hyd',
    Rollno:21
  };
 
  console.log(Employee.name);
  for(const key in Employee){
    console.log(key);
  }
 
  //fibbonacci series
 
  var a=0;
  var b=1;
  for(let i=0;i<10;i++){
     if(a==0){
        console.log(a);
     }
     let c=a+b;
     a=b;
     b=c;
     if(b==1){
        console.log(b);
     }
     console.log(c);
  }
 
 
// Upper triangle
for (let i = 1; i <= 5; i++) {
console.log("*".repeat(i));
 
}
 
// Lower triangle
for (let i = 4; i >= 1; i--) {
console.log("*".repeat(i));
}