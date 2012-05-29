require 'redmine'
require 'application_patch'
require 'cleanup_tmp'

require_dependency 'attachment_hook'

Redmine::Plugin.register :redmine_attach_screenshot do
  name 'Redmine Attach Screenshot plugin'
  author 'Konstantin Zaitsev, Sergei Vasiliev, Alexandr Poplavsky, Jens Alfke, Takashi Okamoto'
  description 'Attach several screenshots from clipboard directly to a Redmine issue'
  version '0.1.0'
end
