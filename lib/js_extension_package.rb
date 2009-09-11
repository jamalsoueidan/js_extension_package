# JsExtensionPackage
module ExtendControllers
  def post?
    request.post?
  end
  
  def get?
    requrest.get?
  end

  def tt(text, options={})
    t("actioncontroller." + text, options)
  end
end

ActionController::Base.send(:include, ExtendControllers)