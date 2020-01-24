require 'yaml'
require "pry"
# require modules here


def load_library(emoticons)
  
  #yaml.load("/lib/emoticons.yml")
  original_hash = YAML.load_file(emoticons)


    new_hash = {:get_meaning =>  {} , :get_emoticon => {}}
    original_hash.each do |key,array_value|
    english = array_value[0]
      japanese =  array_value[1]
 
    
  new_hash[:get_emoticon][english] = array_value[1]
  new_hash[:get_meaning][japanese]  =  key
#binding.pry
end
  
 
   

return new_hash
end

def get_japanese_emoticon(ymal, emoticon)
  new_hash = {}
  new_hash  = load_library(ymal)
  binding.pry
  if new_hash[:get_emoticon][emoticon]
    # what do you want to return here?
  else
   # what happens if it doesnt exist, what will you tell the user?
  end
end


# new_hash.each do |key,array_value|
 
#   if array_value[1] == "grinning"
     
#   new_hash = array_value[1]
    
# end

#     if key == "happy"
#     new_hash[array_value[1]] = array_value[1]
#   end
#   # binding.pry
 
# end
#end
def get_english_meaning
  # code goes here
end