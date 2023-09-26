class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.28.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.28.3/postman-lc-agent_0.28.3_darwin_arm64.zip"
      sha256 "82812b1d790c75cf10e317110ed8b7aaea082c7d98e358ff5d27ce1a3d81b4c7"
    else
      url "https://releases.observability.postman.com/cli/0.28.3/postman-lc-agent_0.28.3_darwin_amd64.zip"
      sha256 "e9cddb8017030882e9572c9662cf9c60c53e49e6c8217ec85da86e5af4dbde5c"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
