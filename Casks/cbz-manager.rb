cask 'cbz-manager' do
  version '2020-03-01'
  sha256 '8ed161187c8b25dcaceefb6d73f0e48707cdfd80999ff158a90c374e2edd1fb3'

  url 'https://github.com/ociviol/cbzManager/raw/master/precompiled%20binairies/Mac%20OsX/cbzManagerOsx.zip'
  name 'cbzManager'
  homepage 'https://ollivierciviolsoftware.wordpress.com'

  depends_on formula: 'unzip'
  depends_on formula: 'unrar'
  depends_on formula: 'p7zip'
  depends_on formula: 'webp'

  app 'cbzManagerOsx.app'
end
