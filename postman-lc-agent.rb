class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.29.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.29.1/postman-lc-agent_0.29.1_darwin_arm64.zip"
      sha256 "d9fbc775bfd56e8e14fa3563128041a7017d09d31b580e8271d8b227234b008e"
    else
      url "https://releases.observability.postman.com/cli/0.29.1/postman-lc-agent_0.29.1_darwin_amd64.zip"
      sha256 "92b25265c879d7b757880a29c4ffc38cd8941949c341930e9a113df19dcf1f07"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
