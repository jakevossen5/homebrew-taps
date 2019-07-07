# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class OmnifocusGraphCreator < Formula
  desc "Creates graphs to analyze your Omnifocus task completion history"
  homepage "https://github.com/jakevossen5/omnifocus-graph-creator"
  url "https://github.com/jakevossen5/omnifocus-graph-creator/archive/1.0.4.tar.gz"
  sha256 "d7cc20c7fd178a7166c5e32f23c59bbbd2c9bbe6089a1c514396ac76f9c3fd10"
  version "1.0.4"
  
  depends_on "python"
  
  
  resource "matplotlib" do
  url "https://files.pythonhosted.org/packages/51/fe/84ab101f8ab543d89b6a128326f62adcdafd2781ab8362a737e6ce78eea7/matplotlib-3.1.0.tar.gz"
  sha256 "1e0213f87cc0076f7b0c4c251d7e23601e2419cd98691df79edb95517ba06f0c"
end

  def install
      xy = Language::Python.major_minor_version "python3"
      venv = virtualenv_create(libexec, "python3")
      
      resources.each do |r|
          venv.pip_install_and_link r
      end
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "prepare-for-install" # if this fails, try separate make/make install steps
    bin.install "omnifocus-graph-creator"
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
