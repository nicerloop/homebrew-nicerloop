class Hfsprescue < Formula
  desc "Is a program to recover files from a HFS+ formatted partition"
  homepage "https://www.plop.at/en/hfsprescue/index.html"
  url "https://download.plop.at/hfsprescue/hfsprescue-3.4-precompiled.tar.gz"
  version "3.4"
  sha256 "14871b71b2f3d5b8ea224d94dab1c312ec6f92c7c40e64b60bfdac44d42d4017"

  livecheck do
    url "https://www.plop.at/en/hfsprescue/download.html"
    regex(/hfsprescue-(.*)-precompiled.tar.gz>/i)
    strategy :page_match
  end

  def install
    libexec.install Dir["*"]
    bin.install Dir[libexec/"MacOSX/hfsprescue"]
  end

  test do
    system hfsprescue "-v"
  end
end
