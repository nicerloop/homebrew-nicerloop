class Czkawka < Formula
  desc "Multi functional app to find duplicates, empty folders, similar images etc."
  homepage "https://github.com/qarmin/czkawka"
  url "https://github.com/qarmin/czkawka/releases/download/4.1.0/mac_czkawka_gui"
  sha256 "3fba663ce29e518969296e6ec64eefbde36e2500801acd53c1f7b73956fc63bc"

  depends_on "gtk+3"
  depends_on "adwaita-icon-theme"

  def install
    bin.install Dir["*"]
  end
end
