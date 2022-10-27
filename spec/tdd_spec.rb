require "tdd"
require "rspec"

describe Array do
    
    describe "#my_uniq" do 
        subject(:original_array) { [1,1,2,2,3,4,4] }

        it "should take in an array as an argument" do
            expect(self).to be_an(Array)
        end

        it "should return an array with unique elements" do
            expect(:original_array.my_uniq).to eq([1,2,3,4])
        end

    end
end