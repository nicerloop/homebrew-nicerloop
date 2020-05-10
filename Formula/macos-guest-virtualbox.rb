class MacosGuestVirtualbox < Formula
  desc "Automted installer of macOS 10.13+ guests in Virtualbox"
  homepage "https://github.com/myspaghetti/macos-guest-virtualbox"
  url "https://github.com/myspaghetti/macos-guest-virtualbox/releases/download/0.91.0/macos-guest-virtualbox.sh"
  sha256 "7c1ae887a28dc9c87609b57f047b27c1dd57fc55c38414ff809bfdc373539fe9"

  bottle :unneeded

  depends_on "bash"
  depends_on "coreutils"
  depends_on "dmg2img"
  depends_on "gzip"
  depends_on "unzip"
  depends_on "wget"

  def install
    libexec.install Dir["*"]
    bin.install Dir[libexec/"*.sh"]
  end
end
