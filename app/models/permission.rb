class Permission < ApplicationRecord
  has_many :entity_permissions, dependent: :destroy

  has_many :users, through: :entity_permissions, source: :entity, source_type: 'User'

  has_many :role_permissions, dependent: :destroy

  has_many :roles, through: :role_permissions

  builder_support rmv: %i[ model ]

  validates :name, uniqueness: { scope: [:source, :model] }

  validates *%i[ model source ], format: { with: /\A[A-Z][A-z]*\z/ }, allow_blank: true
end
