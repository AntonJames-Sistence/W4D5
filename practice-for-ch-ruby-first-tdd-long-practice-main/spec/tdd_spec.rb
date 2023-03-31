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
