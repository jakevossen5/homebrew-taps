class PiGeneratorFromBlocks < Formula
  desc "Generate pi in a ridiculous way using elastic collisions"
  homepage "https://github.com/jakevossen5/pi-generator-from-blocks"
  url "https://github.com/jakevossen5/pi-generator-from-blocks/releases/download/1.0.2/pi-generator-from-blocks"
  version "1.0.2"
  sha256 "4539bfda78eea4b91282f57913276666aaa614044100dc4560f89231b7b0a235"

  def install
    bin.install "pi-generator-from-blocks"
  end

  test do
    system "false"
  end
end
