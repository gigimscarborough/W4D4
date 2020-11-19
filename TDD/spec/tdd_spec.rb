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

    describe "#my_transpose" do
        it "should accept a grid of numbers and convert rows to columns" do
            my_array = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
            expect(my_array.my_transpose).to eq([[0, 3, 6],[1, 4, 7], [2, 5, 8]])
        end
    end

    describe "#stock_picker" do
        it "should take an array of stock prices and return the pair of indexes where you would make the most profit from buying and selling" do
            my_array = [8, 2, 5, 4, 3]
            expect(my_array.stock_picker).to eq([1, 2])
        end
    end
end