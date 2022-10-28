class Game
    attr_accessor :stacks
    attr_reader :disc1, :disc2, :disc3, :disc4
    def initialize
        @disc1 = "_"
        @disc2 = "__"
        @disc3 = "___"
        @disc4 = "____" 
        @stacks = [[@disc4, @disc3, @disc2, @disc1],[],[]]
    end

    def [](pos)
        @stacks[pos.first][pos.last]
    end

    def won?
        @stacks[2].length == 4
    end

    def valid_pos?(start_stack, end_stack)
        if start_stack >= 0 && start_stack < 3 && end_stack >= 0 && end_stack < 3
            return true if @stacks[end_stack].empty?
            if @stacks[end_stack][-1].length > @stacks[start_stack][-1].length
                p "lenght of the element in the end_stack is #{@stacks[end_stack][-1].length}"
                p "lenght of the element in the start_stack is #{@stacks[start_stack][-1].length}"
                return true
            end
        end
        raise "not a valid position"
    end

    def move(start_stack, end_stack)
        if valid_pos?(start_stack, end_stack)
             @stacks[end_stack].push(@stacks[start_stack].pop)
        end
        @stacks
    end
   
end


# hanoi = Game.new
# p hanoi.won?