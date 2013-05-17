
Turtle Graphics
===============


I would love to implement a simple turtle graphics code with canvas



usage

open terminal

location.href = "about:blank"

def remote_require(url)
d =document.create_element 'script'
d.type = 'text/ruby'
d.src = url
doc = document.head.append_child(d)  
end

def rr(url)
remote_require(url)
end

def load_multiple(baseurl,files)
  files.each do |file|
    url =  baseurl + file
    console.log('loading: ' + url)
    remote_require(url)
  end
end


#alias_method :rr, remote_require

remote_require "https://raw.github.com/senthilnayagam/decaf-ruby/master/hello.rb"

remote_require "https://raw.github.com/senthilnayagam/decaf-ruby/master/turtle/run.rb"

remote_require "https://raw.github.com/senthilnayagam/decaf-ruby/master/turtle/turtle.rb"


load_multiple("https://raw.github.com/senthilnayagam/decaf-ruby/master/turtle/",['run.rb','turtle.rb'])
