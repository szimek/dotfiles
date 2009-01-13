IRB.conf[:AUTO_INDENT]=true

require 'rubygems'
require 'pp'
require 'what_methods'
require 'wirble'
Wirble.init
Wirble.colorize

# Easily print methods local to an object's class
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end

#
# Aliases
#
alias q exit

#
# Load Rails specific extensions
#
load File.dirname(__FILE__) + '/.railsrc' if $0 == 'irb' && ENV['RAILS_ENV']
