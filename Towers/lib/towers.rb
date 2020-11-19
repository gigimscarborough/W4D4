class Towers
    attr_reader :towers
    
    def initialize
        @towers = Array.new(3) {Array.new}
        @towers[0] = [1, 2, 3, 4]
    end

    def won?
        return true if self.towers[1] == [1, 2, 3, 4] || self.towers[2] == [1, 2, 3, 4]
    end
end