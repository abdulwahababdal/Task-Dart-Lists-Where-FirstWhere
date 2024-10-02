void main(){
// Lists

//1
List<int> nums = [5, 3, 15, 4, 1];
int sum = 0;
int largest = 0;
nums.forEach((num){
sum = sum + num;
});
  print(sum);
//2
nums.forEach((num){
if (num>largest){
  largest = num;
};
});
print(largest);

List<int> ages = [12, 22, 18, 16];
int minAge = 18;
print(filterVisitors(ages, minAge));
List<int> random = [2, 12, 6, 4, 8, 16];

print(findOdds(random));
}

//Where
List filterVisitors(ages, minAge){
List<int> legalAge = [];
ages.forEach((filter){
if (filter>=minAge){
  legalAge.add(filter);
}
});
return legalAge;
}

//FirstWhere
//orElse
int findOdds(random){
  /*int oddNum =0;
  List<int> firstOdd = [];
  random.forEach((num){
    if (num%2==1 && firstOdd.length==0){
      firstOdd.add(num);
      return firstOdd;
    } 
  });*/
  int result = random.firstWhere((num) => num %2 ==1, orElse: () => 0); 
  return result;
}


