class Towers
    attr_reader :towers
    
    def initialize
        @towers = Array.new(3) {Array.new}
        @towers[0] = [1, 2, 3, 4]
    end

    def move(old_index, new_index)
        if old_index >= 0 && old_index < 3 && new_index >= 0  && new_index < 3 && old_index != new_index
            towers[new_index].unshift(towers[old_index].shift)
        end
    end

    # def won?
    #     return true if self.towers[1] == [1, 2, 3, 4] || self.towers[2] == [1, 2, 3, 4]
    # end
end