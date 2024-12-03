$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'ruby-jmeter'

test do
  threads do
    # in samples per minute
    constant_throughput_timer value: 60.0

    visit name: 'Home Page', url: 'https://google.com/'
  end
end.run(path: '/usr/share/jmeter/bin/', gui: true)
