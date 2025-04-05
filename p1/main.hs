suma::Int->Int->Int
suma x y=x+y

suma3::Int->Int->Int->Int
suma3 a b c=a+b+c

produs::Int->Int->Int
produs x y=x*y

factorial::Int->Int
factorial 0=1
factorial n=n*factorial(n-1)

sumaGauss::Int->Int
sumaGauss 0=0
sumaGauss n=n+sumaGauss(n-1)

main::IO()
main=do
  let result1 = suma 10 20
  let result2 = produs 10 5
  let result3 = suma3 10 20 70
  let result4 = factorial 5
  let result5 = sumaGauss 10
  print result1
  print result2
  print result3
  print result4
  print result5