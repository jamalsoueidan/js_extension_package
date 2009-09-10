# JsExtensionPackage
module ExtendControllers
  def post?
    request.post?
  end
  
  def get?
    requrest.get?
  end

end

ActionController::Base.send(:include, ExtendControllers)