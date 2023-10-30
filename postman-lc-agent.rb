class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.29.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.29.0/postman-lc-agent_0.29.0_darwin_arm64.zip"
      sha256 "c60cac172e0e88b7b29ddad0a3442fa044f4b12067c46b5dd6522954fb22137b"
    else
      url "https://releases.observability.postman.com/cli/0.29.0/postman-lc-agent_0.29.0_darwin_amd64.zip"
      sha256 "a6a7d6fdbcba9f055f788e1ca4556a7ec74e26f67c321d5d8d2b22b38e472153"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
