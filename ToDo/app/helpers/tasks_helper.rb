module TasksHelper
  def item_name(task)
    retVal = 'id=task_' + task.id.to_s
    if task.done?
      retVal += ' style=color:#FF0000'
    end
    retVal
  end

  def button_presence

  end
end
