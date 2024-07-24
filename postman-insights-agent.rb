class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.9"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.9/postman-insights-agent_0.30.9_darwin_arm64.zip"
      sha256 "590ab7038ef29a2bcd1e00bf9d9b619094a3af361df2c05fa9564fd5cf62752a"
    else
      url "https://releases.observability.postman.com/cli/0.30.9/postman-insights-agent_0.30.9_darwin_amd64.zip"
      sha256 "104b59080dee1b825ece6fd94dc80a2b1da74b4dc133f52d75bc596d65f009d7"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
