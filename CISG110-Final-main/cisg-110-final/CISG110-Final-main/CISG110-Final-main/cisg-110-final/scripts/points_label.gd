extends Label

var points = 0

func add_points():
	points += 1
	text = "Points" + str(points)

func lose_points():
	points -= 1 
	text = "Points" + str(points)
