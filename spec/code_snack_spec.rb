require 'spec_helper'

describe CodeSnack do
  # include CodeSnack

  let(:first_gem) { select_random_gem }
  let(:second_gem) { select_random_gem }

  it 'lists installed gems' do
    expect(list_gems).to include('rspec')
  end
  
  it 'fetches a random gem from the list' do
    expect(:first_gem).to_not eql(:second_gem)
  end

  it 'empties the source file before writing the gem source to it' do
      src = 'spec/test.txt'
      empty_file(src)
      expect(src.lines.count).to eql(1)
  end

  it 'prints the gem source on the console' do
    src = 'spec/test.txt'
    str = 'hooboo\nbooboo'
    write_file(str, src)
    expect(src.lines.count).to be > 1
  end

  # it 'prints the first 25 lines of the source file' do
  #   f = open_file
  #   # expect()
  # end

end
