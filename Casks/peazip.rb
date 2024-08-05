cask "peazip" do
  version "9.9.0"
  sha256 "8b2eb492396ceab34860c53f3611a126c576198377dbbb149b9329ea298c5545"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.x86_64.dmg"
  name "peazip"
  desc "Cross-platform file and archive manager"
  homepage "https://github.com/peazip/PeaZip"

  livecheck do
    strategy :github_releases
  end

  app "peazip.app"
end
