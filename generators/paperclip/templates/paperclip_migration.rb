class <%= migration_name %> < ActiveRecord::Migration
  def self.up
<% attachments.each do |attachment| -%>
    add_column :<%= class_name.underscore.camelize.tableize %>, :<%= attachment %>_file_name, :string
    add_column :<%= class_name.underscore.camelize.tableize %>, :<%= attachment %>_content_type, :string
<% end -%>
  end

  def self.down
<% attachments.each do |attachment| -%>
    remove_column :<%= class_name.underscore.camelize.tableize %>, :<%= attachment %>_file_name
    remove_column :<%= class_name.underscore.camelize.tableize %>, :<%= attachment %>_content_type
<% end -%>
  end
end