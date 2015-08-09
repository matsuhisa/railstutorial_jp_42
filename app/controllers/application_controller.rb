class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  include Variant
  protect_from_forgery with: :exception

  before_action :set_request_variant

  private
  def set_request_variant
    logger.debug("type : #{request.device_type}")
    logger.debug("os : #{request.os}")

    if request.from_ipod?
      request.variant = :smartphone
    end

  end
end
