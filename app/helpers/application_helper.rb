module ApplicationHelper
  
  def flash_class(name)
    case name 
    when :alert   then "alert"
    when :notice  then "alert alert-info"
    when :success then "alert alert-success"
    when :error   then "alert alert-error"  
    end
  end
end
