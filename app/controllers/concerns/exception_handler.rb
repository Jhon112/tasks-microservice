module ExceptionHandler
  # provides the more graceful `included` method
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ error: :not_found, message: e.message }, :not_found)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response({ error: :unprocessable_entity, message: e.message }, :unprocessable_entity)
    end

    rescue_from ArgumentError do |e|
      json_response({ error: 400, message: e.message }, 400)
    end
  end
end
