class PostmanLcAgent < Formula
  desc "Postman Live Collections Agent"
  homepage "https://www.postman.com"
  version "0.28.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.28.4/postman-lc-agent_0.28.4_darwin_arm64.zip"
      sha256 "e46bca56af28672beef9b402ab14088b81fc10a56185805cf263e18ca01d84d6"
    else
      url "https://releases.observability.postman.com/cli/0.28.4/postman-lc-agent_0.28.4_darwin_amd64.zip"
      sha256 "a0310ad2841c377c9fcfaad251b1cf9b010670bee5dbff91bc82df4ba0007fa4"
    end
  end

  def install
    bin.install "postman-lc-agent"
  end
end
