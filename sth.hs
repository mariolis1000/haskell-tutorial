import Data.List
import System.IO

myMult :: Double -> Double -> Double
myMult x y = x * y

mySum x y = x + y

addVectors :: [Double] -> [Double] -> [Double]
addVectors x y = zipWith (+) x y

--result' = [[x + y | x <- [1]] | y <- [2]]


main = do
  i1 <- getLine
  let num1 = read i1

  i2 <- getLine
  let num2 = read i2

  let result = mySum num1 num2
  print (result)
