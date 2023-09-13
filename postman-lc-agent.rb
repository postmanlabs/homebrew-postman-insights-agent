class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.26.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.26.2/postman-lc-agent_0.26.2_darwin_arm64.zip"
      sha256 "c6f9aef35797be82f11190faf3233d1ec74f0cea5e217df54b0c024a07b0b2d4"
    else
      url "https://releases.observability.postman.com/cli/0.26.2/postman-lc-agent_0.26.2_darwin_amd64.zip"
      sha256 "e1338b52ab250a908782a3e8ca5b4fc94a85a846a73af645ad107d9bbecc437a"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
