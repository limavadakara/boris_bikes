require 'bike'
describe Bike do
  it 'should respond to method is_working' do
    expect(subject).to respond_to(:is_working)
  end

  it 'should be working when bike is created' do
    expect(subject.is_working).to eq true
  end

  it 'should set bike as broken' do
    subject.is_working = false
    expect(subject.is_working).to eq false
  end

end
