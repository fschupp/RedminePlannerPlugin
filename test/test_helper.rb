# Load the normal Rails helper
require File.expand_path(File.dirname(__FILE__) + '/../../../test/test_helper')

# Ensure that we are using the plugin's fixtures
ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)