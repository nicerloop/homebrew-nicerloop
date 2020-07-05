cask 'retroactive' do
  version '1.8'
  sha256 'e73ec58c4b49f062c9f5ba7f694797a23750ae6dd1c13e7b0f221033c1e2af86'

  url "https://github.com/cormiertyshawn895/Retroactive/releases/download/#{version}/Retroactive.#{version}.zip"
  appcast 'https://github.com/cormiertyshawn895/Retroactive/releases.atom'
  name 'Retroactive'
  homepage 'https://github.com/cormiertyshawn895/Retroactive'

  app "Retroactive #{version}/Retroactive (right click to open).app"
end
