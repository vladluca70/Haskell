function::[Int]->[Int]
function lista=[x|x<-lista, x`mod`2==0]

displayFunction::[Int]->IO()
displayFunction lista=let result=function lista
                in mapM_(putStrLn.show) result

main::IO()
main=do
  let lista=[1,2,3,4,5,6,7,8,9,10]
  displayFunction lista