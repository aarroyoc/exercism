module ComplexNumbers
(Complex,
 conjugate,
 abs,
 exp,
 real,
 imaginary,
 mul,
 add,
 sub,
 div,
 complex) where

import Prelude hiding (div, abs, exp)
import qualified Prelude as P

-- Data definition -------------------------------------------------------------
data Complex a = MkComplex a a  deriving(Eq, Show)

complex :: (a, a) -> Complex a
complex (x, y) = MkComplex x y

-- unary operators -------------------------------------------------------------
conjugate :: Num a => Complex a -> Complex a
conjugate (MkComplex a b) = MkComplex a (-b) 

abs :: Floating a => Complex a -> a
abs (MkComplex a b) = sqrt ((a**2) + (b**2))

real :: Num a => Complex a -> a
real (MkComplex a _) = a

imaginary :: Num a => Complex a -> a
imaginary (MkComplex _ b) = b

exp :: Floating a => Complex a -> Complex a
exp (MkComplex a b) = MkComplex (P.exp a * cos b) (sin b)

-- binary operators ------------------------------------------------------------
mul :: Num a => Complex a -> Complex a -> Complex a
mul (MkComplex a b) (MkComplex c d) = MkComplex (a * c - b * d) (b * c + a * d)

add :: Num a => Complex a -> Complex a -> Complex a
add (MkComplex a b) (MkComplex c d) = MkComplex (a+c) (b+d)

sub :: Num a => Complex a -> Complex a -> Complex a
sub (MkComplex a b) (MkComplex c d) = MkComplex (a-c) (b-d)

div :: Fractional a => Complex a -> Complex a -> Complex a
div (MkComplex a b) (MkComplex c d) = MkComplex ((a * c + b * d)/(c^^2 + d^^2)) ((b * c - a * d)/(c^^2 + d^^2))
