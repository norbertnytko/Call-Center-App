RailsAdmin.config do |config|
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  RailsAdmin.config do |config|
    config.authorize_with do
      redirect_to main_app.root_path  unless current_user.admin?
    end
  end

  config.actions do
    dashboard
    index
    new
    export
    bulk_delete
    show
    edit
    delete
  end
end
