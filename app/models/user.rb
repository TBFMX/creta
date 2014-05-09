class User < ActiveRecord::Base
  has_secure_password
  validates :username, presence: true, uniqueness: true
  belongs_to :rol 
  after_destroy :ensure_an_admin_remains
  validates :password, presence: true, length: { in: 6..20 }, :on => :create
  validates :email, 
             presence: true, 
             uniqueness: true
  validates_format_of :email, 
    :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, 
    :message => ' - The email provided does not have a valid format.'
  validates :name, :lastname, :rol, presence: true

  def send_password_reset
	  generate_token(:password_reset_token)
	  self.password_reset_sent_at = Time.zone.now
	  save!
	  Mailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  private
    def ensure_an_admin_remains
		  if User.count.zero?
        raise "Can't delete last user"
		  end
    end
    
end
