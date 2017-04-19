module TasksHelper
  def render_task_status(task)
    if task.is_hidden
      "(hidden)"
    else
      "(public)"
    end
  end
end
