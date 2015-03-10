class ClosesResolvedIssuesController < ApplicationController
  unloadable


  def index
    ClosesResolvedIssuesController.close
    @issues = Issue.all
  end

  # status_id = 3 (is resolved) and status_id = 5 (is closed)
  # if you delete ", :updated_on => Time.now", update time will not be updated
  def self.close
    Issue.where(:status_id => 3).where("updated_on < ?",
      Time.now - Setting.plugin_redmine_closes_resolved_issues['number_of_days'].to_i.days).
      update_all(:status_id => 5, :updated_on => Time.now)
  end

end
