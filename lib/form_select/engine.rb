# frozen_string_literal: true
require "rails/engine"

module FormSelect
  class Engine < ::Rails::Engine
    ActiveSupport.on_load(:active_record) do
      ActiveRecord::Base.send(:include, FormSelect::Model)
    end
  end
end
