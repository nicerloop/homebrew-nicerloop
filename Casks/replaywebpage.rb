cask "replaywebpage" do
  version "1.8.15"
  sha256 "24dd7513f5a123a5410ed4612f230a6d20b5cb8f9712227b816ce7c07d2cd3a6"

  url "https://github.com/webrecorder/replayweb.page/releases/download/v#{version}/ReplayWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/replayweb.page/"
  name "ReplayWeb.page"
  desc "Web Archive Replay"
  homepage "https://replayweb.page/"

  app "ReplayWeb.page.app"
end
