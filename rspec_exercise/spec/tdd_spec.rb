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

    describe "#my_transpose" do 
        subject(:rows) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}
    
        it "should be called on an array" do
            expect(rows).to be_an(Array)
        end

        it "should return a nested array with tranposed version of original array" do
            expect(rows.my_transpose).to eq(rows.transpose)
        end

        it "should return a nested array with the same length as the original array" do
            expect(rows.my_transpose.length).to eq(rows.length)
            expect(rows.my_transpose.flatten.length).to eq(rows.flatten.length)
        end

        it "should not use built in array#transpose" do 
            expect(rows.my_transpose).not_to receive(:transpose)
        end

    end

end

describe "#stock_picker" do
    subject(:stocks) { [10,13,50,23,19,8,27,49] }

    it "should receive an array" do
        expect(stocks).to be_an(Array)
    end

    it "should return a pair of days with the highest range" do
        expect(stock_picker(stocks)).to eq([5,7])
        expect(stock_picker(stocks).length).to eq(2)
    end

    it "the first element index must be smaller than the second in the original array" do
        expect(stock_picker(stocks)[0]).to be < stock_picker(stocks)[-1]
    end

    it "the resulting array should be sorted" do
        expect(stock_picker(stocks)).to_not eq([7,5])
    end

end