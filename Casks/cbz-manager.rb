cask 'cbz-manager' do
  version '2020-04-01'
  sha256 '5f733c3e01b7dcf4f0a3a50c1d6bcd072d87a2261ec82e99008160bcd6fc5462'

  url 'https://github.com/ociviol/cbzManager/raw/master/precompiled%20binairies/Mac%20OsX/cbzManagerOsx.zip'
  name 'cbzManager'
  homepage 'https://ollivierciviolsoftware.wordpress.com'

  depends_on formula: 'unzip'
  depends_on formula: 'unrar'
  depends_on formula: 'p7zip'
  depends_on formula: 'webp'

  app 'cbzManagerOsx.app'
end
