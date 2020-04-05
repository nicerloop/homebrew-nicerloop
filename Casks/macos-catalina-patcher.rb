cask 'macos-catalina-patcher' do
  version '1.4'
  sha256 '04d3738601591564d58ebd0ae0b99d5addf7c5a8b6529ee151b747b5883c0410'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/dosdude1/macos-catalina-patcher/releases/download/#{version}/macOS.Catalina.Patcher.dmg"
  appcast 'http://dosdude1.com/catalina/changelog.html'
  name 'macOS Catalina Patcher'
  homepage 'http://dosdude1.com/catalina/'

  app 'macOS Catalina Patcher.app'
end
