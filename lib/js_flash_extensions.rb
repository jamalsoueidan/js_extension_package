module JsFlashExtension
  
  def flash_and_redirect(options={})
    if options[:error]
      et(options[:error])
    end
    if options[:success]
      st(options[:success])
    end
    if options[:notice]
      nt(options[:notice])
    end
    
    redirect_to options
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

ActionController::Base.send(:include, JsFlashExtension)