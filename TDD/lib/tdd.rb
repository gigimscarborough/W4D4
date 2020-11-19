class Array
    def my_uniq
        hash = Hash.new(0)
        self.each { |el| hash[el] += 1 }
        hash.keys
    end

    def two_sum
        pairs = []
        (0...self.length).each do |i1|
            (0...self.length).each do |i2|
                pairs << [i1, i2] if i2 > i1 && self[i1] + self[i2] == 0
            end
        end
        pairs
    end
end