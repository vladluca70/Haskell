allNumbers::Int->[Int]
allNumbers number=[x|x<-[1..number]]

divisors::Int->[Int]
divisors number=let lista=allNumbers number
                in [x|x<-lista, number `mod` x==0]

displayDivisors::Int->IO()
displayDivisors number=let result=divisors number
                       in mapM_(putStrLn.show) result

main::IO()
main=do
  let number=10
  displayDivisors number