import Lib (dispense)

--io actions--

main :: IO ()
main =
    do 
        input <- getLine
        putStrLn (dispense input)