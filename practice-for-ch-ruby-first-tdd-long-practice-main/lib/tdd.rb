require 'byebug'
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

def my_transpose(arr)
    transposed = []
    return transposed if arr.empty?

    (0...arr[0].length).each do |j|
        row = []
        # debugger
        (0...arr.length).each do |i|
            row << arr[i][j]
        end
        transposed << row
    end

    transposed
end

def stock_picker(days)
    max_profit = 0
    days_idx = nil

    days.each_with_index do |price1, day1|
        days.each_with_index do |price2, day2|
            if day1 < day2
                difference = price2 - price1

                if difference > max_profit
                    max_profit = difference
                    days_idx = [day1, day2]
                end
            end
        end
    end

    days_idx
end

class TowerHanoi
    attr_accessor :towers

    def initialize
        @towers = [[4,3,2,1],[],[]]
    end

    def move(start_tower, end_tower)
        if !@towers[end_tower-1].empty?
            begin
                raise "Cannot move there" if @towers[start_tower-1].last > @towers[end_tower-1].last
            rescue

            ensure
                return false
            end
        end
        @towers[end_tower-1] << @towers[start_tower-1].pop
        @towers
    end

end
