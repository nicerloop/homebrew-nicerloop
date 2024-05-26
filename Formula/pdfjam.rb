# see https://github.com/FLEWID-AB/homebrew-pdfjam/blob/master/pdfjam.rb for reference
class Pdfjam < Formula
  desc "Package for manipulating PDF files"
  homepage "https://github.com/rrthomas/pdfjam"
  url "https://github.com/rrthomas/pdfjam/releases/download/v3.11/pdfjam-3.11.tar.gz"
  sha256 "fcc85ec14fbb2363f02866b119aaada05b6b44af1c45224c22d407fffe0a8a2a"
  license "GPL-2.0-or-later"

  def install
    bin.install Dir["bin/*"]
    man.install "man1"
  end

  test do
    system "#{bin}/pdfjam", "-h"
  end
end
