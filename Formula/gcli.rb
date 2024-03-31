class Gcli < Formula
  desc "Portable Git(hub|lab|tea) CLI tool"
  homepage "https://github.com/herrhotzenplotz/gcli"
  url "https://herrhotzenplotz.de/gcli/releases/gcli-2.3.0/gcli-2.3.0.tar.gz"
  sha256 "0418937505deb909b987397441adfcbd5e1cc032e8c733e2eca94bbac0cfe336"
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
