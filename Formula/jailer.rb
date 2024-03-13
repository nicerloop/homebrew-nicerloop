class Jailer < Formula
  desc "Database Subsetting and Relational Data Browsing Tool"
  homepage "https://wisser.github.io/Jailer"
  url "https://github.com/Wisser/Jailer/releases/download/v15.8.3/jailer_15.8.3.zip"
  sha256 "4c752c88b63be3ad76cddc28abf39b583d9a082aa0a61ea70c55b2987734c102"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.sh") do |file|
      basename = "" + file.basename
      basename = basename.delete_suffix(".sh")
      (bin/basename).write_env_script file, Language::Java.overridable_java_home_env
    end
  end

  test do
    system "#{bin}/jailer"
  end
end
