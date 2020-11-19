require "tdd"


describe Array do
    subject(:my_array) {Array.new}
    describe "#my_uniq" do
        it "should take in an array and return an array containing only unique elements" do
            my_array = [1, 2, 1, 2, 3]
            expect(my_array.my_uniq).to eq ([1,2,3])
        end
    end

    describe "#two_sum" do
        it "should find all pairs of positions where the elements at those positions sum to zero and return those pairs in order" do
            my_array = [-1, 0, 2, -2, 1]
            expect(my_array.two_sum).to eq([[0, 4], [2, 3]])
        end
    end
end