require "activesupport/raise/deprecation/warnings/version"


module ActiveSupportDeprecationReporting
  def warn(message = nil, callstack = nil)
    message = super
    raise message unless message.blank?
  end
end
ActiveSupport::Deprecation::Reporting.prepend(ActiveSupportDeprecationReporting)

module Activesupport
  module Raise
    module Deprecation
      module Warnings
        class Error < StandardError; end
        # Your code goes here...
      end
    end
  end
end
