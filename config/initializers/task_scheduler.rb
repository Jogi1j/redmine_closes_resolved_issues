require 'rubygems'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.new

# You can set the time here.
# Minute Hour DayOfMonth Month DayOfWeek
scheduler.cron("0 0 * * *") do
  ClosesResolvedIssuesController.close
end
