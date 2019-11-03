class VideoTranscoding < Formula
  desc "Tools to transcode, inspect and convert videos"
  homepage "https://github.com/donmelton/video_transcoding"
  url "https://github.com/donmelton/video_transcoding/archive/0.25.2.tar.gz"
  sha256 "e7932441a52552178968ee83ee86757634d156c27dffc3c299b69a379a0daa33"

  depends_on "ruby" if MacOS.version <= :sierra
  depends_on "handbrake"
  depends_on "ffmpeg"
  depends_on "mkvtoolnix"
  depends_on "mp4v2"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "video_transcoding.gemspec"
    system "gem", "install", "video_transcoding-#{version}.gem"
    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", :GEM_HOME => ENV["GEM_HOME"])
  end
end
