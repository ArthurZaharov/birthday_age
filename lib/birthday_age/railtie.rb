module BirthdayAge
  class Railtie < Rails::Railtie
    initializer "my_railtie.configure_rails_initialization" do
      ActiveSupport.on_load :action_view do |_app|
        include BirthdayAge::Helper
      end
    end
  end
end
