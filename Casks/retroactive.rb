cask 'retroactive' do
  version '1.7'
  sha256 'b77fd5e7086d958fa6dccdd9c191432f5c852230ddb6f8c36dae571bb769340c'

  url "https://github.com/cormiertyshawn895/Retroactive/releases/download/#{version}/Retroactive.#{version}.zip"
  appcast 'https://github.com/cormiertyshawn895/Retroactive/releases.atom'
  name 'Retroactive'
  homepage 'https://github.com/cormiertyshawn895/Retroactive'

  app "Retroactive #{version}/Retroactive (right click to open).app"
end
