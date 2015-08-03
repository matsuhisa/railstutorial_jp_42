module Variant
  def request_is_smartphone?

	logger.debug("cookies : #{cookies['_first_app_session']}")
	request.from_android? || request.from_windows_phone? || request.from_iphone?
  end
end
