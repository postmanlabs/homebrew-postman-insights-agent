class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.29.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.29.3/postman-lc-agent_0.29.3_darwin_arm64.zip"
      sha256 "6c1dbb4285f834f81a762de515e50e9b6ede8128ece07099c8b66f64f41b5aa8"
    else
      url "https://releases.observability.postman.com/cli/0.29.3/postman-lc-agent_0.29.3_darwin_amd64.zip"
      sha256 "0f3425358b0f9afe0b29ed2285609878ce05221ed67494254c2d524f7e850dcc"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
