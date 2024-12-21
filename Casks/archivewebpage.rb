cask "archivewebpage" do
  version "0.14.1"
  sha256 "47b5308617b7964b195b4e6a2dbd8aac25e8cdf8112c9d99d2e9b4acb6bf82fa"

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/archiveweb.page/"
  name "ArchiveWeb.page"
  desc "Interactive browser-based web archiving"
  homepage "https://archiveweb.page/"

  app "ArchiveWeb.page.app"
end
