cask "peazip" do
  version "9.9.1"
  sha256 "4266369de61adf72a21cbe9b36e79a63d54b0423bf8aaabb0c99c7c7dba4c548"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.x86_64.dmg"
  name "peazip"
  desc "Cross-platform file and archive manager"
  homepage "https://github.com/peazip/PeaZip"

  livecheck do
    strategy :github_releases
  end

  app "peazip.app"
end
