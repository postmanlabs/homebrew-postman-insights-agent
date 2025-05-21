class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.36.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.36.7/postman-insights-agent_0.36.7_darwin_arm64.zip"
      sha256 "1d122b560e163c1cd70e1e71564b843aab86fe4f667d924d6b5acb516aa1deba"
    else
      url "https://releases.observability.postman.com/cli/0.36.7/postman-insights-agent_0.36.7_darwin_amd64.zip"
      sha256 "e3d5e9cd8322b75575aea2e42356feb385c6069907867ee355dc26bcc66453c2"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
