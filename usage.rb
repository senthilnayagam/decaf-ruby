
=begin

run this commands inside your decaf ruby shell


=end


# window.open("www.youraddress.com","_self")

location.href  = "https://raw.github.com/senthilnayagam/decaf-ruby/master/index.html"


d =document.create_element "script"
d.type = 'text/ruby'
d.src = 'https://raw.github.com/senthilnayagam/decaf-ruby/master/hello.rb'


doc = document.get_elements_by_tag_name('head').appendChild(d)
