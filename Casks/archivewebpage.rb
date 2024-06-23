cask "archivewebpage" do
  version "0.12.2"
  sha256 "cc6198229baeef7afab9210dd20a0cdd96d0fc4b50605e83a86a72dcdf610d64"

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/archiveweb.page/"
  name "ArchiveWeb.page"
  desc "Interactive browser-based web archiving"
  homepage "https://archiveweb.page/"

  app "ArchiveWeb.page.app"
end
