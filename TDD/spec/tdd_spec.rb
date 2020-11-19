require "tdd"


describe Array do
    subject(:my_array) {Array.new}
    describe "#my_uniq" do
        it "should take in an array and return an array containing only unique elements" do
            my_array = [1, 2, 1, 2, 3]
            expect(my_array.my_uniq).to eq ([1,2,3])
        end
    end
end