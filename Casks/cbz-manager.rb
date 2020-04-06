cask 'cbz-manager' do
  version '2020-04-05,3dedfadeb1c979f1f3a316b613f96600375a1c69'
  sha256 '91a3d0950e4367f84f81dedabce0e9b3db89389164efd871dbf1c3e6baf92783'

  url "https://github.com/ociviol/cbzManager/raw/#{version.after_comma}/precompiled%20binairies/Mac%20OsX/cbzManagerOsx.zip"
  name 'cbzManager'
  homepage 'https://ollivierciviolsoftware.wordpress.com'

  depends_on formula: 'unzip'
  depends_on formula: 'unrar'
  depends_on formula: 'p7zip'
  depends_on formula: 'webp'

  app 'cbzManagerOsx.app'
end
