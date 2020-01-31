class Hfsprescue < Formula
  desc "Hfsprescue is a program to recover files from a HFS+ formatted partition"
  homepage "https://www.plop.at/en/hfsprescue/index.html"
  url "https://download.plop.at/hfsprescue/hfsprescue-3.4-precompiled.tar.gz"
  sha256 "14871b71b2f3d5b8ea224d94dab1c312ec6f92c7c40e64b60bfdac44d42d4017"
  version "3.4"

  def install
    libexec.install Dir["*"]
    bin.install Dir[libexec/"MacOSX/hfsprescue"]
  end

end
