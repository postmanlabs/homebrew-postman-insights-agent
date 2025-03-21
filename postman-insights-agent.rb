class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.35.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.35.2/postman-insights-agent_0.35.2_darwin_arm64.zip"
      sha256 "6523cfbd31f4d0a754f76cb1ab462648e262e50a4b8ea7be150609017605c159"
    else
      url "https://releases.observability.postman.com/cli/0.35.2/postman-insights-agent_0.35.2_darwin_amd64.zip"
      sha256 "28299754fe1e016e18bdf391174d51aa4fec9c4e3d0c10617b2fe9eacb81e761"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
