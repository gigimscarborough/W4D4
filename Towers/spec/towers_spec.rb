require "towers"

describe Towers do
    subject(:game) {Towers.new}
    describe "#initialize" do
        it "should set an array of towers with the first tower containing all disks from smallest to largest" do
            expect(game.towers).to eq([[1,2,3,4], [], []])
        end
    end

    describe "#move" do
        it "should receive old_index and new_index as arguments" do
            expect {game.move(0, 1)}.to_not raise_error
        end

        it "should take disk from beginning of one array and move it to another array" do
            expect(game.move(0, 1)).to_not eq(game.towers)
        end  
    end

    describe "#won?" do
        it "should return true if all disks were moved to the middle or last tower and are in order from smallest to largest" do
            let(:game)
            game.towers = [[], [], [1,2,3,4]]
            expect(game.won?).to be true
            game.towers = [[], [1, 2, 3, 4], []]
            expect(game.won?).to be true
        end
    end

end
        