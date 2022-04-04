extends Line2D


func _decrease_line():
	points[1].y -= 10
	
	if(points[1].y <= 0):
		points[1].y = 0 

func _on_Timer_timeout():
	_decrease_line()
