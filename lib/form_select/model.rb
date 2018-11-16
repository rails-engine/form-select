# frozen_string_literal: true

module FormSelect
  module Model
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      # Use for define helper methods for Rails form.select tag
      #
      # for example:
      #
      #   class User < ApplicationRecord
      #     form_select :name, scope: -> { order("name asc") }
      #     form_select :name_value, field: :name, scope: -> { order("name asc") }
      #     form_select :email, field: [:name, :email], scope: -> { where(status: :active).order("id desc") }
      #     form_select :city, field: :city, scope: -> { where("city is not null").select(:city).distinct }
      #   end
      #
      #
      #   <div class="field">
      #     <%= form.label :user_id %>
      #     <%= form.select :user_id, User.name_options %>
      #   </div>
      #   <div class="field">
      #     <%= form.label :email %>
      #     <%= form.select :email, User.email_options %>
      #   </div>
      #
      def form_select(method, field: nil, scope: nil)
        method_name = "#{method}_options"

        if field.blank?
          text_method ||= method
          value_method ||= :id
        else
          field = [field] unless field.is_a?(Array)
          text_method = field.first
          value_method = field.last
        end

        scope ||= -> { all }

        define_singleton_method(method_name) do
          scope.call.collect { |record| [record.send(text_method), record.send(value_method)] }
        end
      end
    end
  end
end
