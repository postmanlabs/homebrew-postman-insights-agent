class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.28.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.28.0/postman-lc-agent_0.28.0_darwin_arm64.zip"
      sha256 "15896e8a20f64c055b7d36e703989797f75b09a6c699318a5fdd97a5d5f837f0"
    else
      url "https://releases.observability.postman.com/cli/0.28.0/postman-lc-agent_0.28.0_darwin_amd64.zip"
      sha256 "6d7d410040bd62ba858bcf19ac76329c7f8cbff401886ba8cd69a5dcc197fc11"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
