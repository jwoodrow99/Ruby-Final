class AddSlugToPublications < ActiveRecord::Migration[5.2]
  def change
    add_column :publications, :uuid, :string, unique: true, index: true
    add_column :publications, :slug, :string, unique: true, index: true

    Publication.all.each do |pub|
      uuid = SecureRandom.uuid
      pub.update_column(:uuid, uuid)
      pub.update_column(:slug, uuid)
    end
  end
end
