require "tdd"
require "rspec"

describe Array do
    
    describe "#my_uniq" do 
        subject(:original_array) { Array.new([1,1,2,2,3,4,4]) }

        it "should be called on an array" do
            expect(original_array).to be_an(Array)
        end

        it "should return a new array with unique elements" do
            expect(original_array.my_uniq).to eq([1,2,3,4])
        end

    end

    describe "#two_sum" do 
        subject(:original_array) { Array.new([-1, 0, 2, -2, 1]) }

        it "should be called on an array" do
            expect(original_array).to be_an(Array)
        end

        it "should return a 2D array with pairs of indices from the original array that sum to zero" do
            expect(original_array.two_sum).to eq([[0, 4], [2, 3]])
        end

        it "should return smaller elements first" do
            expect(original_array.two_sum).not_to eq([[4,0], [3,2]])
        end

    end

end

