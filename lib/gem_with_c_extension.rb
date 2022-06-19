# frozen_string_literal: true

require_relative "gem_with_c_extension/version"
require_relative "gem_with_c_extension/gem_with_c_extension"

# our example module with one method
module GemWithCExtension
  class Error < StandardError; end

  # NOTE: how hello calls the exposed C-extension called hello_from_c_ext
  def self.hello(name)
    puts hello_from_c_ext(name)
  end
end
