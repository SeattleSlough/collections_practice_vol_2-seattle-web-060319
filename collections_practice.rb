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
  array = []
  new_hash = {{name:}, count: 0}
  arg.each do |element|
    element.each do |key, value|
     temp = element
     array.push(temp)
    end
  end
  array
end


