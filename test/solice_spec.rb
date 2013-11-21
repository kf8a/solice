require File.dirname(__FILE__) + '/../lib/solice.rb'

describe Solice do
  it 'checks for data' do
    solice = Solice.new
    solice.check(51).should be_true
  end
  # context 'running from the comand line' do 
  #   context 'the sun photometer is sending data' do
  #     it 'returns successfully' do
  #       ret_val = `ruby ../../lib/solice.rb 51`
  #       ret_val.should == 0
  #     end
  #   end
  #   context 'the sun photometer is not sending data' do
  #     it 'returns with an error' do
  #       ret_val = `ruby ../../lib/solice.rb 51`
  #       ret_val.should_not == 0
  #     end
  #   end
  # end
end
