data Arbore a = Gol | Nod a (Arbore a) (Arbore a)

-- Exemplu corect de arbore
exempluArbore :: Arbore Int
exempluArbore = Nod 10 
                (Nod 7 
                    (Nod 1 Gol Gol) 
                    (Nod 3 Gol Gol)) 
                (Nod 8 
                    (Nod 4 Gol Gol) 
                    (Nod 5 Gol Gol))

-- Funcția care afișează un arbore
afiseazaArbore :: Show a => Arbore a -> String
afiseazaArbore Gol = "Gol"
afiseazaArbore (Nod valoare stanga dreapta) = 
    "(" ++ show valoare ++ " " ++ afiseazaArbore stanga ++ " " ++ afiseazaArbore dreapta ++ ")"

main :: IO ()
main = putStrLn (afiseazaArbore exempluArbore)
