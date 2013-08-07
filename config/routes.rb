if Rails::VERSION::MAJOR >= 3
  RedmineApp::Application.routes.draw do
    match 'dashboard/:action', :controller => 'dashboard'
  end
else
  ActionController::Routing::Routes.draw do |map|
    map.connect 'dashboard/:action', :controller => 'dashboard'
  end
end
