_Gcd :: Int -> Int -> Int
_Gcd a b
  | a == b    = a
  | a > b     = gcd (a - b) b
  | otherwise = gcd a (b - a)


main :: IO ()
main = do
  let number1 = 16
  let number2 = 20
  let result = _Gcd number1 number2
  print result
