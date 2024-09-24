cask "archivewebpage" do
  version "0.12.8"
  sha256 "7d9e4337f4e2b3bc6b1200ee1041fcf57b2517fb3f09908a473c3ebff1cb6a73"

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/archiveweb.page/"
  name "ArchiveWeb.page"
  desc "Interactive browser-based web archiving"
  homepage "https://archiveweb.page/"

  app "ArchiveWeb.page.app"
end
