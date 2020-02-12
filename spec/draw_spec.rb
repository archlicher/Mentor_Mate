require '~/mentormate/lib/draw'

RSpec.describe '#draw' do
	it { expect(draw(3)).to be_nil }
	it { expect(draw(5)).to be_nil }
	it { expect(draw(7)).to be_nil }
	# it { expect(draw(9999)).to be_nil }
end