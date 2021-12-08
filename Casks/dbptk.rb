cask "dbptk" do
  version "2.5.10"
  sha256 "497637352ac2bb0609900d3b8dc454b578e8fe90676b9146cfddcb95d82bf1be"

  url "https://github.com/keeps/dbptk-desktop/releases/download/v#{version}/dbptk-desktop-#{version}.dmg",
      verified: "https://github.com/keeps/dbptk-desktop"
  name "Database Preservation Toolkit"
  desc "Set of tools to store relational databases in a standard archival format"
  homepage "https://database-preservation.com/"

  app "dbptk-desktop.app"
end
