
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

# draw a line
ctx.move_to(0,0);
ctx.line_to(200,100);
ctx.stroke();



ctx.begin_path();
ctx.arc(95,50,40,0,2*Math::PI);
ctx.stroke();


ctx.font="30px Arial";
ctx.fill_text("Hello World",10,50);

ctx.stroke_text("Hello World",10,50);


#Create gradient
grd=ctx.create_linear_gradient(0,0,200,0);
grd.add_color_stop(0,"red");
grd.add_color_stop(1,"white");


#Fill with gradient
ctx.fill_style=grd;
ctx.fill_rect(10,10,150,80);



# Create gradient
grd2=ctx.create_radial_gradient(75,50,5,90,60,100);
grd2.add_color_stop(0,"red");
grd2.add_color_stop(1,"white");

# Fill with gradient
ctx.fill_style=grd2;
ctx.fill_rect(10,10,150,80);