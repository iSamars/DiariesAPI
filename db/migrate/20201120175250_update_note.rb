class UpdateNote < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :diary, index: true
  end
end
