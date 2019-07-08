# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class OmnifocusGraphCreator < Formula
  include Language::Python::Virtualenv
  desc "Creates graphs to analyze your Omnifocus task completion history"
  homepage "https://github.com/jakevossen5/omnifocus-graph-creator"
  url "https://github.com/jakevossen5/omnifocus-graph-creator/archive/1.0.7.tar.gz"
  sha256 "8f92ea5c3c7f7e446cd278182722223c0498d5cccc1a87d2388d91f236e25223"
  version "1.0.7"
  
  resource "matplotlib" do
  url "https://files.pythonhosted.org/packages/51/fe/84ab101f8ab543d89b6a128326f62adcdafd2781ab8362a737e6ce78eea7/matplotlib-3.1.0.tar.gz"
  url "https://files.pythonhosted.org/packages/12/d1/7b12cd79c791348cb0c78ce6e7d16bd72992f13c9f1e8e43d2725a6d8adf/matplotlib-3.1.1.tar.gz"
  sha256 "1e0213f87cc0076f7b0c4c251d7e23601e2419cd98691df79edb95517ba06f0c"
  sha256 "1febd22afe1489b13c6749ea059d392c03261b2950d1d45c17e3aed812080c93"
end

  
  depends_on "python"
  depends_on "freetype"

  def install
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
