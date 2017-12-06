# *** Generated by Zero [ please make sure that you have checked this file ] ***

class Foo < ApplicationRecord
  acts_as_paranoid

  belongs_to :user, optional: true, polymorphic: true

  has_many :stars

  has_many :sub_foos, class_name: 'Foo', foreign_key: 'sub_foo_id', dependent: :destroy
  belongs_to :sub_foo, class_name: 'Foo', optional: true

  builder_support rmv: %i[ name activated ]

  scope :ordered, -> { all }

  # desc
  def self.bar
    # TODO
  end

  # change its online status
  def change_status
    # TODO
  end

  # desc
  def cool
    # TODO
  end
end

__END__

t.belongs_to :user,       foreign_key: true, polymorphic: true
t.references :sub_foo,    index: true
t.string     :name,       null: false
t.boolean    :activated,  default: false
t.datetime   :deleted_at


add_index :foos, :name, unique: true

