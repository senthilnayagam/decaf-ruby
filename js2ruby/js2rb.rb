#!/usr/bin/env ruby
class String
def underscore
  return downcase if match(/\A[A-Z]+\z/)
  gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2').
  gsub(/([a-z])([A-Z])/, '\1_\2').
  downcase
end
end

$stdin.each_line do |line|
    line =  line.gsub('//','#') #replace js comments with ruby comments
    line =  line.gsub('/**','=begin').gsub(/^\s+/, "")
    line =  line.gsub('/*','=begin').gsub(/^\s+/, "")
    line =  line.gsub('*/','=end').gsub(/^\s+/, "")
    
    if (line.include? '=begin') && (line.include? '=end')
    line = '#' + line
    end
    
    line =  line.gsub('var ','')
    line =  line.gsub(';','')
    
    words =  line.split(/\W+/)
    words.each do |word|
    line =  line.gsub(word,word.underscore)  
    end
    
    
    puts line
end 