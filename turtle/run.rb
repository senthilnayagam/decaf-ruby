
def load_multiple(baseurl,files)
  files.each do |file|
    url =  baseurl + file
    console.log('loading: ' + url)
    remote_require(url)
  end
end

def log(message)
console.log(message)
end  

def url(url)
url = 'http://' + url  unless url.include? "http://"
  window.open(url, "_self")
end  


def clear_window
location.href = "about:blank"
end

def reset
location.href = "about:blank"
end

def load_remote_script(url)
d =document.create_element 'script'
d.type = 'text/ruby'
d.src = url
doc = document.head.append_child(d)  
end

def remote_require(url)
d =document.create_element 'script'
d.type = 'text/ruby'
d.src = url
doc = document.head.append_child(d)  
end

def rr(url)
remote_require(url)
end


def create_canvas(name,width,height)
  c = document.create_element('canvas')
  c.id = name
  c.width = width
  c.height = height
  c
end  



console.log('run loaded')