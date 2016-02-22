# Preview all emails at http://localhost:3000/rails/mailers/username
class UsernamePreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/username/welcome
  def welcome
    Username.welcome
  end

end
