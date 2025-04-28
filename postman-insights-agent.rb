class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.36.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.36.5/postman-insights-agent_0.36.5_darwin_arm64.zip"
      sha256 "0d4a019b80f267c0b98d8ba06bc5323b9742eed0de645a8fabe718720ca21cca"
    else
      url "https://releases.observability.postman.com/cli/0.36.5/postman-insights-agent_0.36.5_darwin_amd64.zip"
      sha256 "4f9ff7852055a33f62fdc2aefe5f5dc995f5615060c94e92e1259d6260e60fe1"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
