class Navigation < BlockHelpers::Base
  def initialize(options={})
    @options = options
  end
      
  def display(body)
    content_tag(:ul, body, @options)
  end

  def link(text, options={})
    class_css = {}
    if current_page?(options)
      class_css[:class] = 'selected'
    end
    
    content_tag(:li, link_to_unless_current(text, options), class_css)
  end
  
  
  def link_selected(text, options={})
    content_tag(:li, link_to(text, options.merge(:class => "selected")))
  end
  
  def link_unselected(text, options={})
    content_tag(:li, link_to(text, options.merge(:class => "unselected")))
  end
  
  def link_back(text = nil)
    text = "Back" if text.nil?
    content_tag(:li, link_to(text, :back))
  end
  
  alias :l :link
  alias :ls :link_selected
  alias :lus :link_unselected
  alias :lb :link_back
end