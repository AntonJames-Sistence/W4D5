
def my_uniq(array)
    result = []
    array.each do |ele|
        result << ele if !result.include?(ele)
    end
    result
end

class Array
    def two_sum
        results = []
        (0..self.length-1).each do |i|
            (i+1..self.length-1).each do |j|
                results << [i, j] if self[i] + self[j] == 0
            end
        end
        results
    end
end
