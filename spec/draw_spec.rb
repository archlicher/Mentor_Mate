require '~/mentormate/lib/draw'

RSpec.describe Draw do
	describe '#draw' do
		let(:d) { Draw.new }

		it { expect(d.draw(3)).to be_nil }
		it { expect(d.draw(5)).to be_nil }
		it { expect(d.draw(7)).to be_nil }
		# it { expect(Draw.new.draw(9999)).to be_nil }
	end
end