module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / (earthYearInSeconds * orbitalPeriodRelativeToEarth planet)
  where
    earthYearInSeconds = 31557600

orbitalPeriodRelativeToEarth :: Planet -> Float
orbitalPeriodRelativeToEarth Mercury = 0.2408467
orbitalPeriodRelativeToEarth Venus = 0.61519726
orbitalPeriodRelativeToEarth Earth = 1.0
orbitalPeriodRelativeToEarth Mars = 1.8808158
orbitalPeriodRelativeToEarth Jupiter = 11.862615
orbitalPeriodRelativeToEarth Saturn = 29.447498
orbitalPeriodRelativeToEarth Uranus = 84.016846
orbitalPeriodRelativeToEarth Neptune = 164.79132
