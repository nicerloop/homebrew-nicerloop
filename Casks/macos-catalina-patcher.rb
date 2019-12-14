cask 'macos-catalina-patcher' do
  version '1.3.0'
  sha256 '128b39b3539809a67f0cd0da03b53a61d21731d5e891c58077fc33050fb525fc'

  # ipfs.io/ipfs was verified as official when first introduced to the cask
  url 'https://ipfs.io/ipfs/Qmdw4cRrrzBWGJXNhMpBx1QfVZ3kiUbKk1eWLPnw9XxZXt/macOS%20Catalina%20Patcher.dmg'
  appcast 'http://dosdude1.com/catalina/changelog.html'
  name 'macOS Catalina Patcher'
  homepage 'http://dosdude1.com/catalina/'

  app 'macOS Catalina Patcher.app'
end
