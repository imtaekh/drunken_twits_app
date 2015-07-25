class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :subsub
  def subsub string
    result = string
    result = result.gsub("wh","wh..wh")
    result = result.gsub("Wh","Wh..wh")
    result = result.gsub("WH","WH..WH")
    result = result.gsub("TO","TWOO..")
    result = result.gsub("TO","TWOO..")
    result = result.gsub("to","twoo..")
    result = result.gsub("e","ee")
    result = result.gsub("E","EE")
    result = result.gsub("U","OO..")
    result = result.gsub("u","oo..")
    result = result.gsub("r","l")
    result = result.gsub("R","L")
    p result
    return result
  end
end
