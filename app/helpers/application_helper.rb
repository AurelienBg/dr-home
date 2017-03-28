module ApplicationHelper
  def branch_info
    branch_name = `git rev-parse --abbrev-ref HEAD`
    content_tag :li do
      content_tag :p, :class => "navbar-text" do
        content_tag :span, branch_name, :class => "label label-warning"
      end
    end
  end
end
