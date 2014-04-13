package 'curl'

execute 'install pythonz' do
  command 'curl -kL https://raw.github.com/saghul/pythonz/master/pythonz-install | bash'
  not_if 'which pythonz'
end

pythons = node['sprout']['sprout-pythonz']['pythons']

pythons.each do |version, options|
  command = "pythonz install #{version}"
  # Boolean options
  ['force', 'run-tests', 'verbose', 'framework', 'universal', 'static'].each do |name|
    command << " --#{name}" if options[name]
  end
  # Value options
  ['type', 'url', 'file', 'configure'].each do |name|
    command << " --#{name}=#{options[name]}" if options[name]
  end

  execute "Installing #{options['type'] || 'Python'} #{version}" do
    command command
    not_if "pythonz list | grep -i #{options['type'] || 'cpython'}-#{version}"
  end
end
