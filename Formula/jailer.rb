class Jailer < Formula
  desc "Database Subsetting and Relational Data Browsing Tool"
  homepage "https://wisser.github.io/Jailer"
  url "https://downloads.sourceforge.net/projects/jailer/files/v11.2.6/jailer_11.2.6.zip"
  sha256 "ec8cf21fb06a1be077c529258bcf6d928ce4370b8392140a760b926de3670e66"

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
