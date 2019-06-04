require 'pry'

def begins_with_r(arg)
  answer = nil
  arg.each do |element|
    if element.start_with?("r")
      answer = true 
    else
      return false 
    end
  end
  return answer
end


def contain_a(arg)
  array = []
  arg.each do |element|
      if element.include?("a")
        array.push(element)
    end
  end
  array
end

def first_wa(arg)
  arg.each do |element|
    if element.is_a?(String)
      if element.start_with?("wa")
        return element
      end
    end
  end
end

def remove_non_strings(arg)
  arg.select do |element|
    element.class == String
  end
end

def count_elements(arg)
  arg.each do |hash|
    hash[:count] = 0
    name = hash[:name]
      arg.each do |hash2|
       if hash2[:name] == name
         hash[:count] += 1
       end
    end
  end.uniq
end

def merge_data(arr1, arr2)
    new_prop_hash = {}
  arr2[0].map do |name, prop_hash|
    arr1.each do |set1|
      if set1[:first_name] == name
        new_prop_hash = prop_hash.merge(set1)
      end
    end
  end
  return new_prop_hash
end
  

def find_cool(arr)
  new_arr = []
  arr.each do |hash|
    hash.each do |key, value|
    if value == "cool"
      new_arr.push(hash)
    end 
    end
  end
  new_arr
end
  
  
def organize_schools(hash)
  new_hash = {}
  hash.each do |school, geography|
    geography.each do |key, location|
    
    binding.pry
    
    location => []
  end
  end
end
    
  
  
  
#   hash = {}
#   arg1.each do |set1|
#     arg2.each do |set2|
#       set2.each do |name, details|
#       if [set1][:first_name] == name 
#         hash = set1.merge(details)
#       end
#     end
#   end
#   end
#   return hash
# end


