require 'webrat'
include Webrat::Methods
include Webrat::Matchers

Webrat.configure do |config|
  config.mode = :mechanize
end

class MechanizeWorld < Webrat::MechanizeSession
  require 'spec'
  include Spec::Matchers
end

World do
  MechanizeWorld.new
end
