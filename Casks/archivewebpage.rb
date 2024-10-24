cask "archivewebpage" do
  version "0.13.1"
  sha256 "46ba166440d4a19707d33f89d311e132d87f5a2e783af08e9d922a64ef1b7ab7"

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/archiveweb.page/"
  name "ArchiveWeb.page"
  desc "Interactive browser-based web archiving"
  homepage "https://archiveweb.page/"

  app "ArchiveWeb.page.app"
end
