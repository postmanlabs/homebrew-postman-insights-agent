class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.28.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.28.5/postman-lc-agent_0.28.5_darwin_arm64.zip"
      sha256 "91d17b124fbeaf42ddb22581654588207c281b4f71743fb4d27ca123caf9819a"
    else
      url "https://releases.observability.postman.com/cli/0.28.5/postman-lc-agent_0.28.5_darwin_amd64.zip"
      sha256 "428ee06b794c31b7ba4b048ec2ce93cb7a61308c95beab706cfa2da904e43e15"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
