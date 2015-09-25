
require "world"
require "cell"

describe Cell do
	let(:cell) {Cell.new}	

	describe '::new' do
		it 'creates a new instance of a CELL' do
			expect(Cell.new("foo", 1, 2, true)).to be_a Cell
		end
		it 'takes in 4 arguments' do
			expect(Cell.new("foo", 1, 2, true)).to be_a Cell
		end
	end

	describe '#live?' do
		it 'returns true if the cell is alive' do
			a = Cell.new("foo", 1, 2, true)
			expect(a.live?).to be true
		end
	end

	describe '#live!' do
		it 'births a new CELL' do
			a = Cell.new("foo", 1, 2, true)
			expect(a.live!).to be_a Cell
		end
	end

	describe '#die!' do
		it 'KILLS a CELL' do
			a = Cell.new("foo", 1, 2, true)
			expect(a.die!).to be false
		end
	end

	describe '#dead?' do
		it 'Returns whether a cell is dead or alive' do
			a = Cell.new('foo', 1, 2, true)
			expect(a.dead?).to be true
		end
	end
	
	describe '#toggle' do
		it 'changes from dead to alive and vice-versa' do
			if a = Cell.new(1, 2, 3, false)
				expect(a.toggle).to be true
			elsif a = Cell.new(1, 2, 3, true)
				expect(a.toggle).to be false
			end
		end
	end


end

