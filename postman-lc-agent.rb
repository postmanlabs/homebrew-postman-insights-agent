class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.28.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.28.2/postman-lc-agent_0.28.2_darwin_arm64.zip"
      sha256 "f21ff70083e480d487169ad184ec0ebe95e64d13f031e004408981a713d1bb2b"
    else
      url "https://releases.observability.postman.com/cli/0.28.2/postman-lc-agent_0.28.2_darwin_amd64.zip"
      sha256 "f7455e624de507d463df7faab2502bee7d23a1d463424b536c46832a30cc3a9b"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
