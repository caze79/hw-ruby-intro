# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  suma=0
  arr.each {|a| suma+=a}
  return suma
end

#puts sum([]).to_s
#puts sum([1,2,3]).to_s


def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length==1
  
  i=1
  
  arr.each do |c| 
    if i== 1
      @a=c
    elsif i==2
      if c> @a
        @b=@a
        @a=c 
      else
        @b=c
      end
    elsif c>@a and c>@b
      @b=@a
      @a=c 
    elsif c>@b
      @b=c
    end
    i+=1
  end
  return @a+@b
end



def sum_to_n? arr, n
  return false if arr.empty?
  return false if arr.length==1
  
  tam=arr.length
  #puts tam.to_s
  
  for i in 0..(tam-2)
    j=i+1
    begin
      #puts "index:"+i.to_s + " " + j.to_s 
      #puts arr[i].to_s + " "+ arr[j].to_s
      if (arr[i]+arr[j]) == n
        return true
      end
      j+=1
    end until j==tam
  end
  
  return false
end

#puts "the sum is " + sum_to_n?([-1,-2,3,4,5,-8], 12).to_s # be false
#puts "the sum is " + sum_to_n?([-1,-2,3,4,6,-8], 12).to_s # be false

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s[0] =~ /[^AEIOU\W]/i
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  s =~ /(^0$|^[0-1]{0,}+00$)/
end


# Part 3

class BookInStock
# YOUR CODE HERE
end
