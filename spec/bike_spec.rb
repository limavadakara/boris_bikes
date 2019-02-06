require 'bike'
describe Bike do
  bike = Bike.new
  it 'should respond to method working' do
    expect(bike).to respond_to(:working)
  end

end
