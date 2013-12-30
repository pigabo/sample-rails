class IssueMailer < ActionMailer::Base
  default from: "rails@issue.com"
  
  def issue_created(issue)
    p "SAM - IssueMailer is called"
    @issue = issue
    mail subject: "A new issue was created", to: "pigabo007@hotmail.com"
  end
end
