ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'factory_bot_rails'
include FactoryBot::Syntax::Methods

# Pry.hooks.add_hook(:before_session, "use FactoryBot shorthand") do |output, binding, pry|
  # Object.include FactoryBot::Syntax::Methods
# end

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)
  #config.include FactoryBot::Syntax::Methods
  #include FactoryBot::Syntax::Methods
  # Add more helper methods to be used by all tests here...
end
