class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.27.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.27.0/postman-lc-agent_0.27.0_darwin_arm64.zip"
      sha256 "97ab78290e173c806754a12d0a92b4a0daa549240f2d3794d1bc211b1adb3f18"
    else
      url "https://releases.observability.postman.com/cli/0.27.0/postman-lc-agent_0.27.0_darwin_amd64.zip"
      sha256 "142255098d575395ecfdeec9832817d58ee372f5215561d9264b62e2c5703ded"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
