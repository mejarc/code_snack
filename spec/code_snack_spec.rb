require 'spec_helper'

describe CodeSnack do
  include CodeSnack

  let(:first_gem) { select_random_gem }
  let(:second_gem) { select_random_gem }
  let(:src) {  }

  it 'lists installed gems' do
    expect(list_gems).to include('rspec')
  end
  
  it 'fetches a random gem from the list' do
    expect(:first_gem).to_not eql(:second_gem)
  end

  it 'opens the gem source' do
    pending
  end

  it 'saves the gem source to src.rb' do
    src = File.open('src.rb', 'r')
    expect(src.lines.count).to be > 0
  end

end
