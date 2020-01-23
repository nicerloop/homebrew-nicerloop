class Pdfbox < Formula
  desc "open source Java tool for working with PDF documents"
  homepage "https://pdfbox.apache.org"
  url "https://www.apache.org/dyn/closer.cgi?path=/pdfbox/2.0.18/pdfbox-app-2.0.18.jar"
  mirror "https://archive.apache.org/dist/pdfbox/2.0.18/pdfbox-app-2.0.18.jar"
  sha256 "7680e32cc26d325f3267d41202eea57e57d3f985844acad1c7d63ac6b419a042"
  
  bottle :unneeded
  
  depends_on :java => "1.8+"
  
  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.jar") do |file|
      bin.write_jar_script file, "pdfbox"
    end
  end
end
