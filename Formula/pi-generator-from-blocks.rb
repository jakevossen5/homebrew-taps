class PiGeneratorFromBlocks < Formula
  desc "Generate pi in a ridiculous way using elastic collisions"
  homepage "https://github.com/jakevossen5/pi-generator-from-blocks"
  url "https://github.com/jakevossen5/pi-generator-from-blocks/releases/download/1.0.1/pi-generator-from-blocks"
  version "1.0.1"
  sha256 "1f5a5b9ade1ebfa4eb978e05cfc1d82a3fb5c3612065cd67407c09a7d87d6d3f"

  def install
    bin.install "pi-generator-from-blocks"
  end

  test do
    system "false"
  end
end
