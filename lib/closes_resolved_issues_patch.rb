module ClosesResolvedIssuesPatch
  extend ActiveSupport::Concern

  included do
    def close
      Issue.where(:status_id => 3).where("updated_on < ?",
        Time.now - Setting.plugin_redmine_closes_resolved_issues['number_of_days'].to_i.days).
        update_all(:status_id => 5, :updated_on => Time.now)
    end
  end

end
