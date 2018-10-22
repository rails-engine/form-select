# frozen_string_literal: true

require "test_helper"

class FormSelect::ModelTest < ActiveSupport::TestCase
  test "User model" do
    assert_equal [["Foo", "foo"], ["Mike", "mike"], ["Jason", "jason"]], User.login_options
    assert_equal [["jason@gmail.com", 10], ["mike@foo.com", 11], ["foo@bar.com", 12]], User.email_options
    assert_equal [["jason@gmail.com", "jason@gmail.com"], ["mike@foo.com", "mike@foo.com"], ["foo@bar.com", "foo@bar.com"]], User.email_value_options
  end

  test "Category model" do
    assert_equal [["MySQL", 23], ["Rails", 24], ["Web", 22]], Category.name_options
    assert_equal [["Web", 22], ["Rails", 24], ["MySQL", 23]], Category.reverse_name_options
  end
end
