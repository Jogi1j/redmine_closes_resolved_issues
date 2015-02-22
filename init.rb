require 'rubygems'
require 'rufus/scheduler'

Redmine::Plugin.register :redmine_closes_resolved_issues do
  name 'Redmine Closes Resolved Issues plugin'
  author 'Jogi1j'
  description 'This is a plugin for Redmin, which closes resolved issues after x days.'
  version '0.0.1'
  url ''
  author_url ''

  settings :default => {'empty' => true}, :partial => 'settings/closes_resolved_issues_settings'
end
