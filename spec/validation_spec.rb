require '~/mentormate/lib/validation'

RSpec.describe '#validation' do
	context 'passes only valid values' do
		it { expect(validation(3)).to eq(3) }
		it { expect(validation(5)).to eq(5) }
		it { expect(validation(7)).to eq(7) }
		it { expect(validation(9999)).to eq(9999) }
	end

	context 'when an invalid value is passed' do
		it { expect(validation(1)).to eq('Your input did not meet the criteria. Please try again.') }
		it { expect(validation(2)).to eq('Your input did not meet the criteria. Please try again.') }
		it { expect(validation(4)).to eq('Your input did not meet the criteria. Please try again.') }
		it { expect(validation(9998)).to eq('Your input did not meet the criteria. Please try again.') }
		it { expect(validation(10_001)).to eq('Your input did not meet the criteria. Please try again.') }
	end
end