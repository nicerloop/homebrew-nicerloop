class Czkawka < Formula
  desc "Multi functional app to find duplicates, empty folders, similar images etc."
  homepage "https://github.com/qarmin/czkawka"
  url "https://github.com/qarmin/czkawka/releases/download/3.3.1/mac_czkawka_gui"
  sha256 "5cc725879935abd26c285fbffe3ceb4a3cf11d11643924bd7f012f365d97ad0f"

  depends_on "gtk+3"
  depends_on "adwaita-icon-theme"

  def install
    bin.install Dir["*"]
  end
end
