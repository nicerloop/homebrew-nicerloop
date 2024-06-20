cask "archivewebpage" do
  version "0.12.1"
  sha256 "2db8f1cd05a93687f939bf8d5730c0f336542b36443be23a435499b1f92a4981"

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/archiveweb.page/"
  name "ArchiveWeb.page"
  desc "Interactive browser-based web archiving"
  homepage "https://archiveweb.page/"

  app "ArchiveWeb.page.app"
end
