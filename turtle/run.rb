
def log(message)
console.log(message)
end  

def clear_window
location.href = "about:blank"
end

def load_remote_script(url)
d =document.create_element 'script'
d.type = 'text/ruby'
d.src = url
doc = document.head.append_child(d)  
end


def create_canvas(name,width,height)
  c = document.create_element('canvas')
c.id = name
c.width = width
c.height = height
c
end  