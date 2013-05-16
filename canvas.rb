
=begin

experimenting with canvas

run in ruby shell 

dont paste the commented lines it is for reference only

=end
c = document.create_element("canvas")
#<canvas>​

c.id = "my_canvas"
#"my_canvas"
c
#<canvas id=​"my_canvas">​
c.width = 200
#200
c.height = 100
#100
document.body.append_child(c)
#<canvas id=​"my_canvas" width=​"200" height=​"100">​
m = document.get_element_by_id('my_canvas')
# <canvas id=​"my_canvas" width=​"200" height=​"100">​
ctx = c.get_context('2d')
# CanvasRenderingContext2D {global_alpha: 1.0, global_composite_operation: "source-over", line_width: 1.0, line_cap: "butt", line_join: "miter"…}
ctx.fill_style = "#FF0000"
# "#FF0000"
ctx.fill_rect(0,0,150,75)
#null

# a small rectangle now must be visble on your browser
