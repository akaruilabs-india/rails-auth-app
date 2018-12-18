module DeviseHelper
  def devise_error_messages!
    if resource.errors.full_messages.any?
      resource.errors.full_messages.each do |message|
        flash.now[:error] = message
      end
    end
    return ''
  end
end
