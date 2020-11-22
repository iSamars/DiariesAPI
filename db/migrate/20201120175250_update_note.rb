class UpdateNote < ActiveRecord::Migration[6.0]
  def change
    remove_reference :notes, :diaries, index: true
    add_reference :notes, :diary, index: true
  end
end
