class UserInfo
  attr_accessor :auth_info

  def initialize auth_info
    @auth_info = auth_info
  end

  def user_id
    auth_info[:uid].split("|")[1]
  end

  def provider
    auth_info[:uid].split("|")[0]
  end

  def name
    raw_info[:name]
  end

  def email
    raw_info[:email]
  end

  def access_token
    credentials[:token]
  end

  def refresh_token
    credentials[:refresh_token]
  end

  def id_token
    credentials[:id_token]
  end

  private

  def info
    auth_info[:info]
  end

  def credentials
    auth_info[:credentials]
  end

  def raw_info
    auth_info[:extra][:raw_info]
  end
end
