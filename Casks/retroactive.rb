cask 'retroactive' do
  version '1.1'
  sha256 '3be737d8538c363177b5a70a3b75dfb3f0b83623485607cb666fcca90a3298cb'

  url "https://github.com/cormiertyshawn895/Retroactive/releases/download/#{version}/Retroactive.#{version}.zip"
  appcast 'https://github.com/cormiertyshawn895/Retroactive/releases.atom'
  name 'Retroactive'
  homepage 'https://github.com/cormiertyshawn895/Retroactive'

  app 'Retroactive 1.1/Retroactive (right click to open).app'
end
