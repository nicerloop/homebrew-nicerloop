cask "peazip" do
  version "10.3.0"
  sha256 "8f634e9ca15dbf09ca470cc16039da11059f8bd369993e675fa57cfc79f23b0c"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.x86_64.dmg"
  name "peazip"
  desc "Cross-platform file and archive manager"
  homepage "https://github.com/peazip/PeaZip"

  livecheck do
    strategy :github_releases
  end

  app "peazip.app"
end
