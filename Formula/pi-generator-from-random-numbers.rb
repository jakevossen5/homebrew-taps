class PiGeneratorFromRandomNumbers < Formula
  desc "Generates Pi from random numbers and co-primes"
  homepage "https://github.com/jakevossen5/pi-generator-from-random-numbers"
  url "https://github.com/jakevossen5/pi-generator-from-random-numbers/releases/download/2.0.3/pi-generator-from-random-numbers"
  version "2.0.3"
  sha256 "87effc7deffa05c9c8f98af620e9d626b06882fd9416bfb9b1f81dabb756edb0"

  def install
    bin.install "pi-generator-from-random-numbers"
  end

  test do
    system "false"
  end
end
