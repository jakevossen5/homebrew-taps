class WatsonVis < Formula
  desc "Turns Watson time data into a CLI pie chart"
  homepage "https://github.com/jakevossen5/watson-vis"
  url "https://github.com/jakevossen5/watson-vis/releases/download/0.1.2/watson-vis"
  version "0.1.2"
  sha256 "42a376600bf94c83d329bf09ebe97bcdb5e72bf3621e78c7a6ee44fa67a49105"

  def install
    bin.install "watson-vis"
  end

  test do
    system "false"
  end
end
