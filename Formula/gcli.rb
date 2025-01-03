class Gcli < Formula
  desc "Portable Git(hub|lab|tea) CLI tool"
  homepage "https://github.com/herrhotzenplotz/gcli"
  url "https://herrhotzenplotz.de/gcli/releases/gcli-2.5.0/gcli-2.5.0.tar.gz"
  sha256 "6af6b46e63d3ff24fcd3534c80b19030387590b744dcdc45f288fedd39bb15d7"
  license "BSD-2-Clause"

  depends_on "curl"
  depends_on "pkg-config"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system bin/"gcli", "version"
  end
end
