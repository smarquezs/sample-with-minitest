class AddSlugToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :title_slug, :string
  end
end
