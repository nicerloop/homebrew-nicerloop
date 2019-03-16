cask 'lastpass-safari-extension' do
  version '4.25.1'
  sha256 'ea3d5447aab9537a1fe095ab81b6e49d7234c1bff8d9bc173958fd68bd6a650f'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  name 'LastPass Safari Extension'
  homepage 'https://blog.lastpass.com/2019/01/change-safari-extension.html/'

  app 'LastPass.app', target: 'LastPass Safari Extension.app'
end
