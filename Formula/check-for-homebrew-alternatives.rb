class CheckForHomebrewAlternatives < Formula
  include Language::Python::Virtualenv
  desc "Searches for homebrew versions of apps installed from other sources"
  homepage "https://github.com/jakevossen5/check-for-homebrew-alternatives"
  url "https://github.com/jakevossen5/check-for-homebrew-alternatives/archive/1.0.5.tar.gz"
  sha256 "dc40f26068afe8b8edd9dc7082b4420512bbb02c112d0f56d35444a10ac4160c"
  version "1.0.5"

  depends_on "python"

  def install
    system "make", "prepare"
    virtualenv_install_with_resources
  end

  test do
    system "false"
  end
end
