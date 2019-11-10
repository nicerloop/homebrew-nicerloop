cask 'macos-catalina-patcher' do
  version '1.2.3'
  sha256 '987944af41b0ba14fab09c9f1c02068817d55e8cfc3c1ccaf097fc9497d41830'

  # ipfs.io/ipfs was verified as official when first introduced to the cask
  url 'https://ipfs.io/ipfs/QmUe9qzLJmFZnLKfNJ37U7AQVtioLtohBYz5Ww2RzJayPD/macOS%20Catalina%20Patcher.dmg'
  appcast 'http://dosdude1.com/catalina/changelog.html'
  name 'macOS Catalina Patcher'
  homepage 'http://dosdude1.com/catalina/'

  app 'macOS Catalina Patcher.app'
end
