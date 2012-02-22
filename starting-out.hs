doubleMe x = x + x

--doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
							then x
							else x * 2
							
maxSide = 100

-- lists all right triangles whose sides are less than maxSide
triangles = [ (a,b,c) |	c <- [1..maxSide],b <- [1..c], a <- [1..b], 
	a^2 + b^2 == c^2]