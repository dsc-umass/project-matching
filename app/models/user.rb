class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_taggable_on :skills, :interests
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
  has_and_belongs_to_many :organizations
  belongs_to :universities
  validates :name, presence: true
  validates :email, presence: true
end
