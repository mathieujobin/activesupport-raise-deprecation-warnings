require "test_helper"

class Activesupport::Raise::Deprecation::WarningsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Activesupport::Raise::Deprecation::Warnings::VERSION
  end

  def test_it_raise_deprecation_warnings
    begin
      ActiveSupport::Deprecation.warn "foo"
      assert false
    rescue RuntimeError
      assert true
    end
  end
end
