# require 'code_snack/version'
# require 'rubygems'

module CodeSnack
  SRC = 'src.rb'

  def list_gems
    Gem::Specification.map {|item| item.name }
  end

  def select_random_gem
    list_gems.sample
  end

  def open_gem
    empty_file
    item = select_random_gem
    p item
    # source = `bundle open #{item} > #{SRC}`
  end

  def open_file
    File.foreach(SRC).each_slice(25) do |line|
      puts line
    end
  end

  def empty_file
    File.open(SRC, 'w'){} unless File.zero?(SRC)
  end
end

include CodeSnack

# open_gem
p SRC.size
open_file