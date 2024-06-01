cask "archivewebpage" do
  version "0.11.4"
  sha256 "cd7535f00ea5a88157632b6730948f311a29b7dd80aa962b459a8c7423fe28c6"

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/archiveweb.page/"
  name "ArchiveWeb.page"
  desc "Interactive browser-based web archiving"
  homepage "https://archiveweb.page/"

  app "ArchiveWeb.page.app"
end
