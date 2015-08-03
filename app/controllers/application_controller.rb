class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  include Variant
  protect_from_forgery with: :exception

  before_action :set_request_variant

  private
  def set_request_variant
    logger.debug("デバイス : #{request}")
    logger.debug("デバイス : #{request.device_type}")
    logger.debug("デバイス : #{request.os}")

    if request_is_smartphone?
      request.variant = :smartphone
    end

  end
end
