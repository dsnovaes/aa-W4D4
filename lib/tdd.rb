class Array

    def my_uniq
        unique = []
        self.each do |ele|
            unless unique.include?(ele)
                unique << ele
            end
        end
        unique
    end

    def two_sum
        summed = []
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                if j > i && self[i] + self[j] == 0
                    summed << [i,j]
                end
            end
        end
        summed
    end

    def my_transpose
        cols = Array.new(self.length){Array.new(self.length)}

        (0...self.length).each do |i|
            (0...self.length).each do |j|
                cols[i][j] = self[j][i]
            end
            j = 0
        end
        cols
    end

end

[10,13,50,23,19,8,27,49]

pairs = {}
if idx2 > idx1
    pairs[ele2-ele1] = [ele1,ele2]

# max difference
# pair
# if idx2 > idx1 && the difference between the two is greater than 
# return the indexes of the two with the max difference