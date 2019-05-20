module PropertiesHelper
    def properties_new_or_edit_path
        if action_name == 'new'
            properties_path
        elsif action_name == 'edit'
            property_path
        end
    end
end