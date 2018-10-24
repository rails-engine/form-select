# frozen_string_literal: true

require_relative "./form_select/version"
require_relative "./form_select/model"

module FormSelect
end

ActiveRecord::Base.send(:include, FormSelect::Model)
