cask "archivewebpage" do
  version "0.12.7"
  sha256 "75d94de545daa43bc01899fddbfe1dbde4589e595a4b09eb35825bf2959fbc49"

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/archiveweb.page/"
  name "ArchiveWeb.page"
  desc "Interactive browser-based web archiving"
  homepage "https://archiveweb.page/"

  app "ArchiveWeb.page.app"
end
