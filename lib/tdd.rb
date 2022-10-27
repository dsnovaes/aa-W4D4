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

end

# p [1,1,2,2,3,4,4].my_uniq

# p [-1, 0, 2, -2, 1].two_sum