import Data.List
import System.IO

-- in haskell rather than parentheses ()
-- you can use a $
--  take X (cycle List)
--  is the same as
--  take X $ cycle List

{-within ghci i can use let to create functions
 or declare variables
 like:
 let my7 = 7
 let mult3 x = x * 3
 mult 3 my7-}

--i can declare variables with let
--let variable = something

--to declare a function that takes 2 integers and returns a resulting integer do
--myFunc :: Int -> Int -> Int
--myFunc x y = operations (result)

myMax = maxBound :: Int
--Doubles have 11 points of decimal precision
--Tuple

-- pi, exp, log, sin, cos, tan, asin, acos, atan
-- truncate, round, ceiling, floor


my5 :: Int
my5 = 5

myL = [1,2,3,4,5]
myL' = [5,4,3,2,1]
myC = myL ++ myL'
-- Combined = list1 ++ list2

more = 2 : 3 : myL
--to add at the start of a list do addedList = Num : List

lenC = length myC
lenL = length myL
lenL' = length myL'
lenmore = length more
reverseC= reverse myC
isempC = null myC
-- ++ to concat, length , reverse , null to check if empty
-- to get a member of a list do member = List !! number
secondofC = myC !! 1
--nthMember = List !! (n-1)

myF = 1 : 2 : 4 : 8 : 16 :[]
--to create a new list i can do x : y : z :[]

consList = 1 : myF
-- to add something at the head of another list do
-- newList = n : oldList


firstC = head myC
lastC = last myC
-- to get the first member of list do firstMember = head List
-- to get the last member of list do lastMember = last List
-- to get everything but the first member with tail List
-- likewise , get everything but the last with init List
-- to take the first n members use take n List

-- to get the list but without the first n members use drop n List
myDr = drop 10 [2,4..256]

myRep = take 20 (repeat 10)
-- you can repeat with take like so take X (repeat n) to repeat the number n X times
-- you can also do the same with the replicate command like so replicate X n
{- cycle will repeat the members of a list indefinitely
 - you can use it like so take X (cycle List) -}

list1 = [1..10] 
list2 = [x*2 | x <- list1]
--to filter results add a comma like so List2 = [x*n | x <-List1, x*n <=> y]
--you can add as many filters as you want by adding more commas

sortedL = sort [9,1,45,53,5,556]
--to sort a list do sort List

--to add two lists of equal size together do
--SumList = zipWith (+) [List1] [List2]
sumList = zipWith (+) [2,45,89] [23,3,0]

--to filter a list to meet a condition do
--filter (<=>Y) List
listLowerThan7 = filter (<7) list1

--to make a pseudo-while loop use takeWhile (condition) [List] 
-- result = takeWhile (<=>Y) [1,2..]
myWhile = takeWhile (<256) [0,1..]

mapList = map (/2) [1..20]
--map takes whats in the parentheses and does it to every member of that list

--to multiply all the members of a list and take the result do
--foldl (*) 1[List]
multOfList = foldl (*) 1[1..16]
--foldl multiplies from the left
--foldr multiplies from the right
--or you can use product List 
--result = product List

divLists = foldr (/) 1[1..16]
--foldl and foldr can be used for any combination of operations
--

multList = [[1,2,3],[13,17,21]]

is9inList = elem 9 myC
is8inList = 8 `elem` myC
-- isXinList = elem X List
-- isXinList = X `elem` List
-- maxMember = maximum List
-- minMember = minimum List
-- sumOfMembers = sum List
-- productOfMember = product List

infinite10 = [10,20..]

-- you can make nested lists like Nested = [[List1],[List2]]

myDec = [1..1000]

myS = sum myDec

myDiv = 5/4
myMod = mod 5 4
myMod' = 5 `mod` 4


my9 = 9 :: Int
sq9 = sqrt (fromIntegral my9)

myPi = pi
ePow6 = exp 6
logOf6 = log 6
squared6 = 6 ** 2
-- x ** y raises x^y

infFibs = 0 : 1 : zipWith (+) infFibs (tail infFibs)

listFFS = [x * y | x <- [1..10], y <- [1..10]]
--simple way to make every member of x multiplied with every member of y 
--each individual member of x is multiplied with every member of y
--so if x is size m and y is size n
--the resulting list has size m*n
listFFS' = [x * y | x <- [1..10], y <- [1..10], x * y `mod` 2 == 0]
-- i can filter with a comma

myTuple = ("Marios Roungeris", 2001)
getName = fst myTuple 
getYear = snd myTuple 
-- fst = first , snd = second

empNames = ["John Dere", "George Alison", "Peter Parker", "Alice Wonder"]
empYears = [1997,1988,1978,1994]
empList = zip empNames empYears
-- zip combines the two lists together into a list of tuples
-- zip basically takes two lists and combines them into a list of tuple pairs

add a b = a+b
multiply a b = a*b
customF a b c = add (multiply a b) c
-- F = (a*b)+c

--TO RAISE x TO n POWER JUST DO
--x^n
exl = [0..512]
pow2exl = [2^n | n <- exl]

propedia = [[x * y | x <- [1..10]] | y <- [1..10]]
--WRONG: propedia' = [x * y | x <- [1..10] | y <- [1..10]]


exage :: Int -> String
exage 7 = "You go to elementary school"
exage 12 = "You go to middle school"
exage 15 = "You go to high school"
exage 18 = "You are an adult"
exage 21 = "You can drive a truck"
exage _ = "Not a milestone"


cout = "Hello, Motherfuckers!!!"

nonUpperCase :: [Char] -> [Char]
nonUpperCase s = [c | c <- s, elem c ['a'..'z']]

--to print a string on the screen use
--putStrLn "String"

-- to store something from the terminal do
-- variable <- getLine

addTuples :: (Double, Double) -> (Double, Double) -> (Double, Double) 
addTuples (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

main = do
  putStrLn "Enter your name: "
  name <- getLine
  let s = nonUpperCase name
 -- print(s)
  putStrLn ("Hello, " ++ s ++ "!!!")









