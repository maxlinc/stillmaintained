require File.dirname(__FILE__) + "/../spec_helper"
require 'capybara'
require 'capybara/dsl'
require 'fakeweb'

module Bacon
  class Context
    include Capybara
    Capybara.app = Application

    alias_method :scenario, :it
    alias_method :background, :before
  end
end

module Kernel
  alias_method :feature, :describe
end
