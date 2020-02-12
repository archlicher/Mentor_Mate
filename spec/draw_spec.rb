require '~/mentormate/lib/draw'

RSpec.describe Draw do
	describe '#draw' do
		it { expect(Draw.new.draw(3)).to be_nil }
		it { expect(Draw.new.draw(5)).to be_nil }
		it { expect(Draw.new.draw(7)).to be_nil }
		# it { expect(Draw.new.draw(9999)).to be_nil }
	end
end