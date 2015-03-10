require 'rubygems'
require 'rufus/scheduler'

Redmine::Plugin.register :redmine_closes_resolved_issues do
  name 'Redmine Closes Resolved Issues plugin'
  author 'Jogi1j'
  description 'This is a plugin for Redmin, which closes resolved issues after x days.'
  version '1.0.2'
  url 'http://www.redmine.org/plugins/redmine_closes_resolved_issues'
  author_url 'https://github.com/Jogi1j/redmine_closes_resolved_issues'

  settings :default => {'empty' => true}, :partial => 'settings/closes_resolved_issues_settings'
end
