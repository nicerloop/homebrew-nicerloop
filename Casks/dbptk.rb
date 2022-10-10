cask "dbptk" do
  version "2.7.0"
  sha256 "0b5be44aa5d8197e0dc5ca2ffd96f1db22d58745eeafbc2016ab219ee471dcec"

  url "https://github.com/keeps/dbptk-desktop/releases/download/v#{version}/dbptk-desktop-#{version}.dmg",
      verified: "https://github.com/keeps/dbptk-desktop"
  name "Database Preservation Toolkit"
  desc "Set of tools to store relational databases in a standard archival format"
  homepage "https://database-preservation.com/"

  app "dbptk-desktop.app"
end
