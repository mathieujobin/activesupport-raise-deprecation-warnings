require "activesupport/raise/deprecation/warnings/version"

require 'active_support'

module ActiveSupportDeprecationReporting
  def warn(message = nil, callstack = nil)
    message = super
    raise message unless message.blank?
  end
end
ActiveSupport::Deprecation::Reporting.prepend(ActiveSupportDeprecationReporting)
ActiveSupport::Deprecation.prepend(ActiveSupportDeprecationReporting)
