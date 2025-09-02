class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.38.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.38.0/postman-insights-agent_0.38.0_darwin_arm64.zip"
      sha256 "de32f5a7a35effbd8e04292fe1379aeca1d76f487fe971c36b16e30cf7615f49"
    else
      url "https://releases.observability.postman.com/cli/0.38.0/postman-insights-agent_0.38.0_darwin_amd64.zip"
      sha256 "c84b268c545b58086a2e9e9d0d02b31b14d383cd35d443c412a8ac55b0cd4f23"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
