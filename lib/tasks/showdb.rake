desc "Show db config"
task :showdbc do
	require "YAML"

	puts "Database Configuration"
	info = YAML::load(IO.read("C:\\Sites\\railsdemo\\config\\database.yml"))
	info.each do |k, (k1, v1)|
		puts "Type: #{k.to_s}"
		puts "Values: #{k1.to_s}"
	end
end