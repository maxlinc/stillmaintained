require 'bacon'
require 'machinist/mongoid'
require 'mocha'

require File.expand_path(File.dirname(__FILE__) + '/../application.rb')

#require File.expand_path(File.dirname(__FILE__) + '/../lib/project')
#require File.join(File.dirname(__FILE__), '..', 'application.rb')

# set :environment, :test
#
# Rspec.configure do |config|
#
#   config.before(:each) do
#     [User, Project].each { |model| model.delete_all }
#   end
#
# end

User.blueprint {}
Project.blueprint do
  visible true
end
