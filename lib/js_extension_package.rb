# JsExtensionPackage
module ExtendControllers
  def post?
    request.post?
  end
  
  def get?
    requrest.get?
  end
  
  # as flash[:error] = text
  def et(text)
    flash_translate(:error, text)
  end

  # as flash[:success] = text  
  def st(text)
    flash_translate(:success, text)
  end
  
  # as flash[:notice] = text
  def nt(text)
    flash_translate(:notice, text)
  end
  
  private
    def flash_translate(key, text)
      flash[key] = t("actioncontroller." + text)
    end
end

ActionController::Base.send(:include, ExtendControllers)