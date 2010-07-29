require 'redmine'
require 'dispatcher'
require 'application_patch'
require 'cleanup_tmp'

require_dependency 'attachment_hook'

Dispatcher.to_prepare do
end

Redmine::Plugin.register :redmine_attach_screenshot do
  name 'Redmine Attach Screenshot plugin'
  author 'Konstantin Zaitsev, Sergei Vasiliev, Alexandr Poplavsky, Jens Alfke'
  description 'Attach several screenshots from clipboard directly to a Redmine issue'
  version '0.0.4'
end
