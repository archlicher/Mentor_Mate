require '~/mentormate/lib/validations'

RSpec.describe Validations do
	let(:v) { Validations.new }

	describe '#validate' do
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

	describe '#integer?' do
		context 'valid' do
			it { expect(v.integer?(0)).to be_truthy }
			it { expect(v.integer?(2)).to be_truthy }
			it { expect(v.integer?(1000)).to be_truthy }
			it { expect(v.integer?(-123)).to be_truthy }
		end

		context 'invalid' do
			it { expect(v.integer?(0.1)).to be_falsy }
			it { expect(v.integer?('x')).to be_falsy }
			it { expect(v.integer?('exit')).to be_falsy }
			it { expect(v.integer?(-2.3)).to be_falsy }
		end
	end

	describe '#between_2_and_10_000?' do
		context 'yes' do
			it { expect(v.between_2_and_10_000?(2.1)).to be_truthy }
			it { expect(v.between_2_and_10_000?(3)).to be_truthy }
			it { expect(v.between_2_and_10_000?(4.4)).to be_truthy }
			it { expect(v.between_2_and_10_000?(9999)).to be_truthy }
			it { expect(v.between_2_and_10_000?(9999.9)).to be_truthy }
		end

		context 'no' do
			it { expect(v.between_2_and_10_000?(1)).to be_falsy }
			it { expect(v.between_2_and_10_000?(10_000)).to be_falsy }
		end
	end

	describe '#odd?' do
		context 'yes' do
			it { expect(v.odd?(1)).to be_truthy }
			it { expect(v.odd?(-1)).to be_truthy }
			it { expect(v.odd?(3)).to be_truthy }
			it { expect(v.odd?(9999)).to be_truthy }
		end

		context 'no' do
			it { expect(v.odd?(0)).to be_falsy }
			it { expect(v.odd?(2)).to be_falsy }
			it { expect(v.odd?(-2)).to be_falsy }
		end
	end
end