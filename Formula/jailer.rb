class Jailer < Formula
  desc "Database Subsetting and Relational Data Browsing Tool"
  homepage "https://wisser.github.io/Jailer"
  url "https://sourceforge.net/projects/jailer/files/v11.2.7/jailer_11.2.7.zip"
  sha256 "0f9805b4e58d590af7fd54d6d2ffc97c226fd24eeb12b1a06f9bb4bca27a2a91"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.sh") do |file|
      basename = "" + file.basename
      basename = basename.delete_suffix(".sh")
      (bin/basename).write_env_script file, Language::Java.overridable_java_home_env
    end
  end
end
