# Write a function, `rec_intersection(rect1, rect2)` and returns the
# intersection of the two.
#
# Rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).
#
# Hint: You can calculate the left-most x coordinate of the
# intersection by taking the maximum of the left-most x coordinate of
# each rectangle. Likewise, you can calculate the top-most y
# coordinate of the intersection by taking the minimum of the top most
# y coordinate of each rectangle.
#
# Difficulty: 4/5

# Rectangle has 4 points 
# Its representing the rectangles 4 points using arrays. 

describe "#rectangle_intersection" do
  it "handles a simple case" do
    rec_intersection(
      [[0, 0], [2, 1]],
      
      # Bottom Left is 0,0 
      # Top left 
      # Top Right 2, 1 
      # Bottom right
      
      # # Cartesian plane
      
      # (0,1) 
      # -------------------------(^2,*1) 
      # |                       |                        
      # |      -----------------|--------
      # |(*0,^0) |                | (2,0) |
      # -------|------------------      |
      #       |                        |
      #       --------------------------
      
      
      [[1, 0], [3, 1]]
    ).should == [[1, 0], [2, 1]]
  end
