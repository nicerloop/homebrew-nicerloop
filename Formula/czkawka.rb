class Czkawka < Formula
  desc "Multi functional app to find duplicates, empty folders, similar images etc."
  homepage "https://github.com/qarmin/czkawka"
  url "https://github.com/qarmin/czkawka/releases/download/3.2.0/mac_czkawka_gui"
  sha256 "b64649b43bf81d293e63644160adb55434e6251cfd0325f8530767b71354e450"

  depends_on "gtk+3"
  depends_on "adwaita-icon-theme"

  def install
    bin.install Dir["*"]
  end
end
