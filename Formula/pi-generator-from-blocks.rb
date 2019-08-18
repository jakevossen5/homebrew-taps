# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PiGeneratorFromBlocks < Formula
  desc "Generate pi in a ridiculous way using elastic collisions"
  homepage "https://github.com/jakevossen5/pi-generator-from-blocks"
  url "https://github.com/jakevossen5/pi-generator-from-blocks/releases/download/1.0.0/pi-generator-from-blocks"
  sha256 "cd1e3ee4c924ae093a1e556acc0c4cdbc9abec361d278b6da699ce4a7b36251c"
  version "1.0.0"
  
  def install
      bin.install "pi-generator-from-blocks"
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
