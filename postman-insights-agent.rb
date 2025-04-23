class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.36.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.36.3/postman-insights-agent_0.36.3_darwin_arm64.zip"
      sha256 "a93fa387a35c98177a0d3f55917df65e8cb6c4a25ec22ace5fed65681112f0d9"
    else
      url "https://releases.observability.postman.com/cli/0.36.3/postman-insights-agent_0.36.3_darwin_amd64.zip"
      sha256 "d740744b55671524cc24ca077f148e634791d9adaf4b3c8a05b8699e40d67149"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
