# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CheckForHomebrewAlternatives < Formula
  include Language::Python::Virtualenv
  desc "Converts text to format for mocking spongebob meme"
  homepage "https://github.com/jakevossen5/sarcasm"
  url "https://github.com/jakevossen5/sarcasm/archive/1.0.0.tar.gz"
  sha256 "ab00659b65540a0f3addf820fdc2620ee897f3f6c1cad5a5891f2ecb701f298a"
  version "1.0.0"

  depends_on "python"

  def install
      system "make", "prepare"
      virtualenv_install_with_resources
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
