require '~/mentormate/lib/validation'

RSpec.describe Validations do
	describe '#validate' do
		let(:v) { Validations.new }

		context 'passes only valid values' do
			it { expect(v.validate(3)).to eq(3) }
			it { expect(v.validate(5)).to eq(5) }
			it { expect(v.validate(7)).to eq(7) }
			it { expect(v.validate(9999)).to eq(9999) }
		end

		context 'when an invalid value' do
			it { expect(v.validate(0)).to be_nil }
			it { expect(v.validate(1)).to be_nil }
			it { expect(v.validate(2)).to be_nil }
			it { expect(v.validate(4)).to be_nil }
			it { expect(v.validate(9998)).to be_nil }
			it { expect(v.validate(10_001)).to be_nil }
		end
	end
end