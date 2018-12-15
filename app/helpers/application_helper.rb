module ApplicationHelper
  def custom_bootstrap_flash
    flash_messages = []
    flash.each do |type, message|
      type = flash_type(type)
      text = javascript_tag("$(document).ready(function(){toastr.#{type}('#{message}');;})")
      if message.present?
        flash_messages << text.html_safe
      end
    end
    flash_messages.join("\n").html_safe
  end
end

def flash_type(type)
  type = :success if type == :success || type == :notice || type == "success" || type == "notice"
  type = :error  if type == :danger || type == :alert || type == "danger" || type == "alert"
  type
end
