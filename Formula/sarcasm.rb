class Sarcasm < Formula
  include Language::Python::Virtualenv
  desc "Converts text to format for mocking spongebob meme"
  homepage "https://github.com/jakevossen5/sarcasm"
  url "https://github.com/jakevossen5/sarcasm/archive/1.0.5.tar.gz"
  version "1.0.5"
  sha256 "4433559db0185ff1af90d8b7846f304943c5f508af09479cf8cd83743dc356bb"

  depends_on "python"

  def install
    system "make", "prepare"
    virtualenv_install_with_resources
  end

  test do
    system "false"
  end
end
