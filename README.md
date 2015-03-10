# redmine_closes_resolved_issues


This is a plugin for Redmine, which closes resolved issues after x days.
In the configuration plugins, enter the number of days after resolved.

You have two options:

1.Automatic (with scheduler)

Copy file task_scheduler.rb from plugin folder
redmine_closes_resolved_issues/config/initializers/task_scheduler.rb
to your main redmine folder
config/initializers/

You can set the time here.

2.Manual (visit url)

Always when you visit site <your_redmine_url>/closes_resolved_issues
but it is not so comfortable.

...

This is my first plugin, please, if you find an error, please contact me, thank you

URL Redmine: http://www.redmine.org/plugins/redmine_closes_resolved_issues

URL Plugin (in github): https://github.com/Jogi1j/redmine_closes_resolved_issues
