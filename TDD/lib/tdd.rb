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

    def my_transpose
        transposed = []
        (0...self.length).each do |i1|
             sub_arr = []
            (0...self.length).each do |i2|
                sub_arr << self[i2][i1]
            end
            transposed << sub_arr
        end
        transposed
    end

    def stock_picker
        pairs = []
        (0...self.length).each do |i1|
            (0...self.length).each do |i2|
                pairs << [self[i1], self[i2]] if i2 > i1 && self[i1] < self[i2]
            end
        end
        accum = pairs.inject do |acc, el|
            if (acc[1] - acc[0]) < (el[1] - el[0])
                acc = el
            else
                acc
            end
        end
        [self.index(accum[0]), self.index(accum[1])]
    end
end