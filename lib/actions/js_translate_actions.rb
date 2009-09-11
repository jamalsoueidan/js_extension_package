module JsTranslateActions
  def self.included?(instance)
    instance.helper_method :tt
  end
  
  def tt(text, options={})
    t("actioncontroller." + text, options)
  end
end

ActionController::Base.send(:include, JsTranslateActions)