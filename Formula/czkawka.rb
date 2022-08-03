class Czkawka < Formula
  desc "Multi functional app to find duplicates, empty folders, similar images etc."
  homepage "https://github.com/qarmin/czkawka"
  url "https://github.com/qarmin/czkawka/releases/download/5.0.1/mac_czkawka_gui"
  sha256 "0d5adb448450f4d05b32ae4d4b9a00dbb66097cc89ab1c9e23b3f2d80fc55c0c"

  depends_on "gtk4"

  def install
    bin.install Dir["*"]
  end
end
