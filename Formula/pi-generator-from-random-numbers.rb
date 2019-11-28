# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PiGeneratorFromRandomNumbers < Formula
  desc "Generates Pi from random numbers and co-primes"
  homepage "https://github.com/jakevossen5/pi-generator-from-random-numbers"
  url "https://github.com/jakevossen5/pi-generator-from-random-numbers/releases/download/2.0.1/spi-generator-from-random-numbers"
  sha256 "69e9207ea6deb623266583ae0420ad7c5891deac1bfa18c515e0bd0d65112942"
  version "2.0.1"
  
  def install
      bin.install "pi-generator-from-random-numbers"
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    #  system "make", "prepare-for-install" # if this fails, try separate make/make install steps
    #bin.install "omnifocus-graph-creator"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test omnifocus-graph-creator`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
