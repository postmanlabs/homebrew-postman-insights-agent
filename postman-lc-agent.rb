class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.28.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.28.1/postman-lc-agent_0.28.1_darwin_arm64.zip"
      sha256 "4837e7ec2915e4f489ca1279abe2c9beae72ab842f74f783e69855a0a6450ffc"
    else
      url "https://releases.observability.postman.com/cli/0.28.1/postman-lc-agent_0.28.1_darwin_amd64.zip"
      sha256 "1fb94ee0238b94fe91af93c20f9a9c20d0eb826e99372f70cca1b0639d028b80"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
