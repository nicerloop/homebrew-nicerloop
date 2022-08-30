class Czkawka < Formula
  desc "Multi functional app to find duplicates, empty folders, similar images etc."
  homepage "https://github.com/qarmin/czkawka"
  url "https://github.com/qarmin/czkawka/releases/download/5.0.2/mac_czkawka_gui"
  sha256 "ad33bb846658c450c39b710daa1fe73ab37f140595702b0542801c87573a2c7c"

  depends_on "gtk4"

  def install
    bin.install Dir["*"]
  end
end
