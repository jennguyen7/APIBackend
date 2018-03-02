require 'apitest'
describe APITest do
	context 'without inputs'
	let(:apitest) {APITest.new}

	it 'is named Frank' do
#		zombie = APITest.new
		expect(apitest.name).to eq('frank')
	end

	it 'has a name' do
#		zombie = APITest.new('steven')
		expect(apitest.name).to eq('steven')
	end

	it 'test3' do
#		zombie = APITest.new('steven')
		expect(apitest.eat).to eq('steven')
	end

end