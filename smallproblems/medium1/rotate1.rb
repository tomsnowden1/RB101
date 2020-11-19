def rotate_array(array)
 print  array.each_index.map do |x|
    if x == 0
      x = -1
    else
    x +=1
  end
  end 
end

array_one = [1, 2, 3, 4]
 rotate_array(array_one)

=begin
array = []
 rotated_ arrayarray.each_with_index.map do |num, index|
   array.insert(index +=1, array.delete_at(-1))
 end
 print array
 #array.insert(0, array.delete_at(-1))
end
=end
=begin
  I want to 
  iterate each number, and push back one index
  EXCEPT for the first number[0], I want to push to the back[-1]
=end

=begin
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]   
=end