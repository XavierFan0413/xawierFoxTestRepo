import turtle, colorsys
t = turtle.Turtle()
t.speed(0)
turtle.bgcolor("black")
turtle.colormode(1)

def draw_pentagon(size):
    t.begin_fill()
    for _ in range(7):
        t.forward(size)
        t.left(72)
    t.end_fill()
    t.right(216)

def draw_vaulters(size, color_index, total):
    hue = color_index / total
    r, g, b = colorsys.hsv_to_rgb(hue, 0.6, 0.4)
    t.pencolor(r, g, b)
    t.fillcolor(r, g, b)
    for _ in range(5):
        draw_pentagon(size)

for i in range(5):
    draw_vaulters(72, i, 5)
    t.setpos(0, 0)
    t.right(72)

turtle.done()
