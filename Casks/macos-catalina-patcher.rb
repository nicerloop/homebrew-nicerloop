cask 'macos-catalina-patcher' do
  version '1.3.2'
  sha256 'ebc51c6c134fb46ea8fb3c7555eadbcb7fda91c642d0ed2ede767f939cd027d8'

  # github.com was verified as official when first introduced to the cask
  url 'https://github.com/dosdude1/macos-catalina-patcher/releases/download/1.3.2/macOS.Catalina.Patcher.dmg'
  appcast 'http://dosdude1.com/catalina/changelog.html'
  name 'macOS Catalina Patcher'
  homepage 'http://dosdude1.com/catalina/'

  app 'macOS Catalina Patcher.app'
end
