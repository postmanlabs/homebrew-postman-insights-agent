class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.27.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.27.1/postman-lc-agent_0.27.1_darwin_arm64.zip"
      sha256 "6af6ca0b669bb5f5b5bfc5a7fe88bb529bd4f89510c633d7b05f53a5db9994f3"
    else
      url "https://releases.observability.postman.com/cli/0.27.1/postman-lc-agent_0.27.1_darwin_amd64.zip"
      sha256 "84e06361ef3994dc2e82dc37b00d9694b771b14b7cc4df17176ae4feabea7211"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
