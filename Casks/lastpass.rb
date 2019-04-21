cask 'lastpass' do
  version '4.26.0'
  sha256 '9b21c542c18824dc967f0045d685b89b3b40f2fdfe85966c178614c6640d6eda'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  name 'LastPass'
  homepage 'https://blog.lastpass.com/2019/01/change-safari-extension.html/'

  auto_updates true
  
  app 'LastPass.app'
end
