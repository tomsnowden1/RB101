
def digit_list(xy)
  xy.to_s
  xy.map {|x|puts x + ", "}
end 

digit_list(8234)
  