desc "MySpeechTime gem dependencies"
task :install_dependencies do
  dependencies = {
    'sinatra' => '0.9.4',
    'haml' => '2.2.9'
  }
  dependencies.each do |gem_name, gem_version|
    puts "#{gem_name} #{gem_version}"
    system "gem install #{gem_name} --version #{gem_version}"
  end
end