-- factorial using pattern-matching
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- some vector stuff - use 4-d space-time vectors
scalarProduct :: (Num a) => (a,a,a,a) -> (a,a,a,a) -> a
scalarProduct (t1,x1,y1,z1) (t2,x2,y2,z2) = -t1*t2 + x1*x2 + y1*y2 + z1*z2

vectorAdd :: (Num a) => (a,a,a,a) -> (a,a,a,a) -> (a,a,a,a)
vectorAdd (t1,x1,y1,z1) (t2,x2,y2,z2) = (t1+t2, x1+x2, y1+y2, z1+z2)

magnitude :: (Num a) => (a,a,a,a) -> a
magnitude (t,x,y,z) = -(t^2) + x^2 + y^2 + z^2

interval :: (Num a) => (a,a,a,a) -> (a,a,a,a) -> a
interval (t1,x1,y1,z1) (t2,x2,y2,z2) = -(t2-t1)^2 + (x2-x1)^2 + (y2-y1)^2 + (z2-z1)^2

-- helper - look for the "exciting" magic number. can you guess what it means?
-- moved to where block in lorentzTransform
--lambda :: (Floating a) => a -> a
--lambda v = 1/sqrt(1-(v^2/299792458.0^2))

-- assume vector is rotated to x-axis (simple transform)
lorentzTransform :: (Floating a) => a -> (a,a,a,a) -> (a,a,a,a)
lorentzTransform v (t,x,y,z) = (t*lambda - v*x*lambda, -v*t*lambda + x*lambda, y, z)
	where lambda = 1/sqrt(1-(v^2/299792458.0^2))
