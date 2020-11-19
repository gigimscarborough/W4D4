require "towers"

describe Towers do
    subject(:game) {Towers.new}
    describe "#initialize" do
        it "should set an array of towers with the first tower containing all disks from smallest to largest" do
            expect(game.towers).to eq([[1,2,3,4], [], []])
        end
    end

    # describe "#won?" do
    #     it "should return true if all disks were moved to the middle or last tower and are in order from smallest to largest" do
    #         let(:game)
    #         game.towers = [[], [], [1,2,3,4]]
    #         expect(game.won?).to be true
    #         game.towers = [[], [1, 2, 3, 4], []]
    #         expect(game.won?).to be true
    #     end
    # end

end
        