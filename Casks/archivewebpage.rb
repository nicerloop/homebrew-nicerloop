cask "archivewebpage" do
  version "0.12.5"
  sha256 "02962af201fd22ca0f8942a34c9dbe2fddb68f7e6c91ef42360b625c09257ac4"

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/archiveweb.page/"
  name "ArchiveWeb.page"
  desc "Interactive browser-based web archiving"
  homepage "https://archiveweb.page/"

  app "ArchiveWeb.page.app"
end
