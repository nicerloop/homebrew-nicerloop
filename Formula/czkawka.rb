class Czkawka < Formula
  desc "Multi functional app to find duplicates, empty folders, similar images etc."
  homepage "https://github.com/qarmin/czkawka"
  url "https://github.com/qarmin/czkawka/releases/download/5.0.0/mac_czkawka_gui"
  sha256 "14acc0fbf32e52b3522f6830ee810896b8bb89691e0a1f4be4852ea7583bd361"

  depends_on "gtk4"

  def install
    bin.install Dir["*"]
  end
end
