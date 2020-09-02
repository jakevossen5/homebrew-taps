# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WatsonVis < Formula
  desc "Turns Watson time data into a CLI pie chart"
  homepage "https://github.com/jakevossen5/watson-vis"
  url "https://github.com/jakevossen5/watson-vis/releases/download/0.1.0/watson-vis"
  sha512 "a45816aeb32f679003144c1858d41b74db90c5949fc7131cafc93b4b82b11f1dc8c5982a4bf7e8ded440fc16f82c48947f7baf01fa8b8b5b4f57c798865f21a3"
  version "0.1.0"

  def install
      bin.install "watson-vis"
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
