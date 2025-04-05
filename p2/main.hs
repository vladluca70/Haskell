even_odd_f :: Int -> String
even_odd_f n = if n `mod` 2 == 0 then "the number is even"
               else "the number is odd"


function::Int->Int
function n = length [x | x <- [1..n], n `mod` x == 0]


isPrime::Int->String
isPrime n=let suma=function n
          in if suma == 2 then "the number is prime"
          else "the number is not prime"



main :: IO ()
main = do
    let result1 = even_odd_f 10
    let result2 = isPrime 13
    print result1
    print result2
