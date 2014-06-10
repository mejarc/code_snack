require 'qwandry'

module CodeSnack

  def list_gems
    Gem::Specification.map {|item| item.name }
  end

  def select_random_gem
    list_gems.sample
  end

  def fetch_gem_source(name)
    url = "https://rubygems.org/api/v1/gems/#{name}.json"
    response = HTTParty.get(url).parsed_response
    "#{response['source_code_uri']}/lib/#{name}.rb"
    # result = JSON.parse(response[0].body)
    # p "result: #{result.name}"
    # p "source: #{result[0]['source_code_uri']}"
    # source_uri = "#{result[0]['source_code_uri']}/lib/#{name}.rb"
    # p source_uri
    # gem_source = system("curl -k #{source_uri} -r 0-499 -o #{SRC}")
  end

  def write_file(gem_source, file)
    File.open(file, 'w') do |file|
      file.write(gem_source)
    end
  end

  def print_gem_source(name)
    src = `qw #{name} -e vi`
    puts src
  end

#   def open_file
#     File.foreach(SRC).each_slice(25) do |line|
#       puts line
#     end
#   end

  def empty_file(src)
    File.open(src, 'w'){}
  end
end

include CodeSnack

nm = select_random_gem
print_gem_source(nm)
# open_file
