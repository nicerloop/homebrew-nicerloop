class Jailer < Formula
  desc "Database Subsetting and Relational Data Browsing Tool"
  homepage "https://wisser.github.io/Jailer"
  url "https://sourceforge.net/projects/jailer/files/v12.0/jailer_12.0.zip"
  sha256 "f60c6b7a2b087553ac282e0085e30ff28bef2ba9e96a9c4367659889b23b4033"

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
