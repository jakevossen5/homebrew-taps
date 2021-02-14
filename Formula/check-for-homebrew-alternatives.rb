class CheckForHomebrewAlternatives < Formula
  include Language::Python::Virtualenv
  desc "Searches for homebrew versions of apps installed from other sources"
  homepage "https://github.com/jakevossen5/check-for-homebrew-alternatives"
  url "https://github.com/jakevossen5/check-for-homebrew-alternatives/archive/1.0.4.tar.gz"
  version "1.0.4"
  sha256 "036101a6b55477abd606d691dfe8e4a2742abba23de523733c7739f52e1ee21a"

  depends_on "python"

  def install
    system "make", "prepare"
    virtualenv_install_with_resources
  end

  test do
    system "false"
  end
end
