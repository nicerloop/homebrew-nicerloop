cask "archivewebpage" do
  version "0.14.2"
  sha256 "4fa1d96da05bc13f0907a601cd358ad397c7040a655407e68a65f24639b55b5e"

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/archiveweb.page/"
  name "ArchiveWeb.page"
  desc "Interactive browser-based web archiving"
  homepage "https://archiveweb.page/"

  app "ArchiveWeb.page.app"
end
