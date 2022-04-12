module Lib where
import Data.List
import Data.Char

--computational behavior--
inventory :: [(Int,String)]
inventory = [(1,"coke"),
             (2,"pepsi"),
             (3,"dr pepper"),
             (4,"water")
            ]


--check if in stock and return--
isInStock :: String -> Bool
isInStock input = any (\(_,soda) -> soda == input) inventory 

--if in stock proceed to order--
    --feed order to dispense in main.hs--
order :: String -> String
order input = if isInStock input then dispense input else "error"

dispense :: String -> String
dispense input = "Thank you for your purchase, enjoy your " ++ input ++ "!"
        