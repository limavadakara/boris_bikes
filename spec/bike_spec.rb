require 'bike'
describe Bike do
  it 'should respond to method working' do
    expect(subject).to respond_to(:working?)
  end

  it 'should return yes for working?' do
    expect(subject.working?).to eq true
  end

end
