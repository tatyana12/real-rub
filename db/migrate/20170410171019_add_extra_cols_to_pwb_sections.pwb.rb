# This migration comes from pwb (originally 20170315195413)
class AddExtraColsToPwbSections < ActiveRecord::Migration[5.0]
  def change
    add_column :pwb_sections, :flags, :integer, default: 0, index: true, null: false
    add_column :pwb_sections, :details, :json, default: {}
    add_column :pwb_sections, :is_page, :boolean, default: false, index: true
    add_column :pwb_sections, :show_in_top_nav, :boolean, default: false, index: true
    add_column :pwb_sections, :show_in_footer, :boolean, default: false, index: true
    add_column :pwb_sections, :key, :string, index: true
  end
end
