require '~/mentormate/lib/validation'

RSpec.describe Validations do
	describe '#validate' do
		context 'passes only valid values' do
			it { expect(Validations.new.validate(3)).to eq(3) }
			it { expect(Validations.new.validate(5)).to eq(5) }
			it { expect(Validations.new.validate(7)).to eq(7) }
			it { expect(Validations.new.validate(9999)).to eq(9999) }
		end

		context 'when an invalid value is passed' do
			it { expect(Validations.new.validate(0)).to eq('Your input did not meet the criteria. Please try again.') }
			it { expect(Validations.new.validate(1)).to eq('Your input did not meet the criteria. Please try again.') }
			it { expect(Validations.new.validate(2)).to eq('Your input did not meet the criteria. Please try again.') }
			it { expect(Validations.new.validate(4)).to eq('Your input did not meet the criteria. Please try again.') }
			it { expect(Validations.new.validate(9998)).to eq('Your input did not meet the criteria. Please try again.') }
			it { expect(Validations.new.validate(10_001)).to eq('Your input did not meet the criteria. Please try again.') }
		end
	end
end