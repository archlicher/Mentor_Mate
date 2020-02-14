require '~/mentormate/lib/draw'

RSpec.describe Draw do
	let(:d) { Draw.new }

	describe '#draw' do
		it { expect(d.draw(3)).to be_nil }
		it { expect(d.draw(5)).to be_nil }
		it { expect(d.draw(7)).to be_nil }
		# it { expect(d.draw(9999)).to be_nil }
	end

	describe '#top_mm_logo' do
		it { expect(d.top_mm_logo(3)).to be_nil }
		it { expect(d.top_mm_logo(5)).to be_nil }
		it { expect(d.top_mm_logo(7)).to be_nil }
		# it { expect(d.top_mm_logo(9999)).to be_nil }
	end

	describe '#bottom_mm_logo' do
		it { expect(d.bottom_mm_logo(3)).to be_nil }
		it { expect(d.bottom_mm_logo(5)).to be_nil }
		it { expect(d.bottom_mm_logo(7)).to be_nil }
		# it { expect(d.bottom_mm_logo(9999)).to be_nil }
	end
end