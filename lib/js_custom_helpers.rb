module CustomHelpers
  def flash_messages
    content = flash_option(:success)
    if content.nil?
      content = flash_option(:error)
    end
    if content.nil?
      content = flash_option(:notice)
    end
    return content
  end
  
  def flash_option(hash)
    if flash[hash]
      return content_tag(:div, flash[hash], :class => "flash flash-" + hash.to_s)
    end
    return nil
  end
  
  def link_back(text = nil)
    if text.nil?
      text = "Back"
    end
    
    link_to(text, :back)
  end
end

ActionView::Base.send(:include, CustomHelpers)