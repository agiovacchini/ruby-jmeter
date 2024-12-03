$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'ruby-jmeter'

test do
  threads count: 10 do
    post name: 'Oauth Token', url: 'https://google.com/api/oauth?username=Michael&authType=token'
  end
end.run(path: '/usr/share/jmeter/bin/', gui: true)
