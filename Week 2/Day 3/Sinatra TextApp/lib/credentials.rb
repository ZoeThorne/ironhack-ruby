class PasswordValidator
  def initialize(username, password)
    @username = username
    @password = password
  end

  Credentials = {
    "alice" => "secret",
    "bob" => "123"
  }

  def valid?
    correct_password = Credentials[@username]
    correct_password && @password == correct_password
  end
end