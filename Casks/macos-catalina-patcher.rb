cask 'macos-catalina-patcher' do
  version '1.4.4'
  sha256 '092396a91a77b75b4a854c972e98241ab45fb853e5c8db14d1dd9eabe21b7235'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/dosdude1/macos-catalina-patcher/releases/download/#{version}/macOS.Catalina.Patcher.dmg"
  appcast 'http://dosdude1.com/catalina/changelog.html'
  name 'macOS Catalina Patcher'
  homepage 'http://dosdude1.com/catalina/'

  app 'macOS Catalina Patcher.app'
end
