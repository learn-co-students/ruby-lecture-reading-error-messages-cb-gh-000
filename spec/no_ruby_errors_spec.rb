describe "Not having any errors and being all green" do

  context 'NameError' do
    if 'raises a NameError when encountering undefined barewords' do
      expect{
        load './lib/a_name_error.rb'
      }.to_not raise_error
    end
  end

  context 'SyntaxError' do
    if 'raises a SyntaxError for nonsensical code' do
      expect{
        load './lib/a_syntax_error.rb'
      }.to_not raise_error
    end
  end

  context 'TypeError' do
    if 'raises a TypeError for objects of the wrong type' do
      expect{
        load './lib/a_type_error.rb'
      }.to_not raise_error
    end
  end

  context 'ZeroDivisionError' do
    if 'raises a ZeroDivisionError for dividing by zero' do
      expect{
        load './lib/a_division_by_zero_error.rb'
      }.to_not raise_error
    end
  end
end