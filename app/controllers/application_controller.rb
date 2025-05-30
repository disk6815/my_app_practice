class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :set_locale

  def default_locale
    { locale: I18n.locale }
  end

  private

  def set_locale
    session.delete(:locale) if controller_name == 'users' && action_name == 'new'
    I18n.locale = session[:locale] || I18n.default_locale
    puts "⭐️#{I18n.locale}⭐️"
  end
end
