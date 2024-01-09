class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.29.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.29.2/postman-lc-agent_0.29.2_darwin_arm64.zip"
      sha256 "e0d47673d165a9aa1b054395560aba21c13436938061fd8e483b77ebc2b8d735"
    else
      url "https://releases.observability.postman.com/cli/0.29.2/postman-lc-agent_0.29.2_darwin_amd64.zip"
      sha256 "8bc502164670af4fda644a0db8be2805a07016821b029fb55fc8969bf1924b82"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
