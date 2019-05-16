module PropertysHelper
  def propertys_new_or_edit_path
    if action_name == 'new'
      propertys_path
    elsif action_name == 'edit'
      property_path
    end
  end
end
