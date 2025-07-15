class ActionDispatch::IntegrationTest
  def login_as(user)
    # Adjust this based on your authentication system
    post login_url, params: {
      session: {
        email: user.email,
        password: "password" # or whatever the test password is
      }
    }
  end
end


ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
