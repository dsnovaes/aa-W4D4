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

def stock_picker(array)
    max_difference = 0
    pair = []
    (0...array.length).each do |i|
        (0...array.length).each do |j|
            if j > i && (array[j] - array[i]) > max_difference
                max_difference = (array[j] - array[i])
                pair = [i,j]
            end
        end
    end
    pair
end