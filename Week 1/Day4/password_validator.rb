class PasswordValidator
  def initialize(username, password)
    @username = username
    @password = password
  end

  DB = {
    "alice" => "secret",
    "bob" => "123"
  }

  def valid?
    correct_password = DB[@username]
    correct_password && @password == correct_password
  end
end