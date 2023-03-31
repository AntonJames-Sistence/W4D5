require_relative '../lib/tdd.rb'

describe "#my_uniq" do
    array = [1,2,2,3,4,5]

    it 'returns only unique elements' do
        expect(my_uniq(array)).to eq([1,2,3,4,5])
    end

    it 'returns a new array' do
        expect(my_uniq(array)).to_not be(array)
    end
end

describe "#two_sum" do
    array = [-1, 0, 2, -2, 1]
    array_2 = [5, 3, 0, 2, -5, 5]

    it 'returns proper order of pairs of indices' do
        expect(array.two_sum).to eq([[0,4], [2,3]])
    end

    it 'returns correct answer' do
        expect(array_2.two_sum).to include([0,4])
        expect(array_2.two_sum).to include([4,5])
        expect(array.two_sum).to_not eq([])
        expect(array.two_sum.length > 2).to_not be true
    end
end

describe '#my_transpose' do
    array = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
    ]
    array2 = [
        [0, 1, 2]
    ]

    it 'Return trasposed array' do
        expect(my_transpose(array)).to eq([
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
        ])
    end

    it "Shoud return a new array" do
        expect(my_transpose(array)).to_not be array
    end

    it "Should work for any matrix even empty" do
        expect(my_transpose(array2)).to eq([
            [0],
            [1],
            [2]
        ])

        expect(my_transpose([])).to eq([])
    end
end

describe '#stock_picker' do
    arr = [5, 3, -7, 8, -9]

    it "It should return a pair of days" do
        expect(stock_picker(arr).length).to eq(2)
    end

    it "It shoul return a correct days" do
        expect(stock_picker(arr)).to eq([2, 3])
    end

    it 'It should not sell stocks before day when you bought it' do
        expect(stock_picker(arr)).to_not eq([4, 3])
    end

end
