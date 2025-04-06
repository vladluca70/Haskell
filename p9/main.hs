evenNumbersList::[Int]->[Int]
evenNumbersList=filter(\x->x`mod`2==0)

oddNumbersList::[Int]->[Int]
oddNumbersList=filter(\x->x`mod`2==1)

divisors::Int->Int
divisors number=length[x|x<-[1..number], number `mod` x==0]

primeNumbersList::[Int]->[Int]
primeNumbersList list=[x|x<-list, divisors x ==2]

createList::Int->[Int]
createList number=[x|x<-[1..number]]

main::IO()
main=do
  let list=createList 20
  let evenNumbers=evenNumbersList list
  let oddNumbers=oddNumbersList list
  let primesList=primeNumbersList list
  print (evenNumbers)
  print(oddNumbers)
  print(primesList)