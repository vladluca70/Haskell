divisors::Int->[Int]
divisors n=[x|x<-[1..n], n `mod` x == 0]
--Functie care returneaza o lista cu toti divizorii unui numar

sum_of_divisors::[Int]->Int
sum_of_divisors list=sum list
--Functie care returneaza suma elementelor unei liste

square_list::[Int]->[Int]
square_list=map(^2)
--Functie care ridica la patrat fiecare element dintr-o lista

square_list_for_even::[Int]->[Int]
square_list_for_even=map(^2).filter even
--Functie care ridica la patrat fiecare element par dintr-o lista

square_list_for_odd::[Int]->[Int]
square_list_for_odd=map(^2).filter odd
--Functie care ridica la patrat fiecare element impar dintr-o lista

square_list_for_div4::[Int]->[Int]
square_list_for_div4 lista=[x^2|x<-lista, x `mod` 4 ==0]
--Functie care ridica la patrat fiecare element divizibil cu 4 dintr-o lista


main::IO()
main=do  
  let divs=divisors 100
  print divs
  print (sum_of_divisors divs)
  let lista=[1,2,3,4,5,6,7,8,9,10]
  print (square_list lista)
  print (square_list_for_even lista)
  print (square_list_for_odd lista)
  print (square_list_for_div4 lista)