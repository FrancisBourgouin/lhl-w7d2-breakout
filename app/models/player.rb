  class Player < ActiveRecord::Base
    has_many :messages
    has_many :channel_memberships
    has_many :channels, through: :channel_memberships 

    validates :username, presence: true, uniqueness: true, length: {in: 8..15}
    validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
    validates :password, presence: true, length: {minimum: 8}
    validates :points, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}

    validate :cheated?

    before_save :downcase_email, if: :email_given?

    private

    def cheated?
      errors.add(:points, "is over 1M, you've cheated!") unless points < 1000000 
    end

    def downcase_email
      self.email = email.downcase
    end

    def email_given?
      !!email
    end

  end