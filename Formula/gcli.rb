class Gcli < Formula
  desc "Portable Git(hub|lab|tea) CLI tool"
  homepage "https://github.com/herrhotzenplotz/gcli"
  url "https://herrhotzenplotz.de/gcli/releases/gcli-2.4.0/gcli-2.4.0.tar.gz"
  sha256 "629b03b0a69d1df3c39b75517a5fc6cd254190be9e0dbde61595fe3ecddde3ce"
  license "BSD-2-Clause"

  depends_on "curl"

  def install
    system "./configure", "--disable-silent-rules", *std_configure_args
    system "make", "install"
  end

  test do
    system "#{bin}/gcli", "version"
  end
end
