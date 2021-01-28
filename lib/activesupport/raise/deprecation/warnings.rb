require "activesupport/raise/deprecation/warnings/version"

require 'active_support'

module ActiveSupportDeprecationReporting
  def warn(message = nil, callstack = nil)
    message = super
    raise message unless message.to_s.empty?
  end
end
ActiveSupport::Deprecation::Reporting.prepend(ActiveSupportDeprecationReporting)
ActiveSupport::Deprecation.prepend(ActiveSupportDeprecationReporting)
