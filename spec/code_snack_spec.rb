require 'spec_helper'

describe CodeSnack do
  include CodeSnack

  let(:first_gem) { select_random_gem }
  let(:second_gem) { select_random_gem }

  it 'lists installed gems' do
    expect(list_gems).to include('rspec')
  end
  
  it 'fetches a random gem from the list' do
    expect(:first_gem).to_not eql(:second_gem)
  end

  it 'saves the ' do
  end
end
