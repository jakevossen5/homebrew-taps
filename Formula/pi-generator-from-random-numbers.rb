class PiGeneratorFromRandomNumbers < Formula
  desc "Generates Pi from random numbers and co-primes"
  homepage "https://github.com/jakevossen5/pi-generator-from-random-numbers"
  url "https://github.com/jakevossen5/pi-generator-from-random-numbers/releases/download/2.0.2/pi-generator-from-random-numbers"
  version "2.0.2"
  sha256 "5020e8da9257916c77a2970d11be26175c9399849869644ff60fe9c8e9b69c84"

  def install
    bin.install "pi-generator-from-random-numbers"
  end

  test do
    system "false"
  end
end
