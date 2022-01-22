class Czkawka < Formula
  desc "Multi functional app to find duplicates, empty folders, similar images etc."
  homepage "https://github.com/qarmin/czkawka"
  url "https://github.com/qarmin/czkawka/releases/download/4.0.0/mac_czkawka_gui"
  sha256 "30240352d6db05e930d51c1f5dc6b9cd5bac22481bab74f261759001f7c0fe14"

  depends_on "gtk+3"
  depends_on "adwaita-icon-theme"

  def install
    bin.install Dir["*"]
  end
end
