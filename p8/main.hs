import Data.Char(isUpper)

square=map(^2)[1..]

checkLists::[Int]->[Int]->Bool
checkLists a b=a==b


apply::[Int]->[Int]
apply =map(^3).filter (\x->x`mod`3==0)

doubleEven::[Int]->[Int]
doubleEven=map(*2).filter(\x->x`mod`2==0)

filterLong :: [String] -> Int -> [String]
filterLong list number = filter(\x->length x >=number) list

powerNegatives::[Int]->[Int]
powerNegatives=map(^2).filter(\x->x<0)

endsWithEven::[Int]->[Int]
endsWithEven=filter(\x->x`mod`2==0)

onlyCapitals::String->String
onlyCapitals=filter isUpper


main::IO()
main=do
  let result1= take 5 square
  mapM_(putStrLn.show)result1
  let list1=[1,2,3,4]
  let list2=[1,2,3,4,5]
  let result2=checkLists list1 list2
  print result2
  let list3=[1,2,3,4,5,6,7,8,9,10]
  let list4=["mere", "portocala", "ceai", "cireasa"]
  let list5=[-1,-2,-3,-4,5,6,7,8,9]
  let result3=apply list3
  print result3
  let result4=doubleEven list3
  print(result4)
  let result5 = filterLong list4 5
  print result5
  print (powerNegatives list5)
  print (endsWithEven list3)
  print (onlyCapitals "abCDeFghIJKL")
