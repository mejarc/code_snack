guard "rspec" do
  # run corresponding test file when
  # anything in *.lib changes
  watch(%r{^lib/(.+).rb$}) do |file|
    "spec/#{file[1]}_spec.rb"
  end

  # run test file when it changes
  watch(%r{^spec/(.+).rb$}) do |file|
    "spec/#{file[1]}.rb"
  end
end