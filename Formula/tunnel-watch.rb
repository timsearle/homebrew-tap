class TunnelWatch < Formula
  desc "Report whether the Rotherhithe Tunnel is open or closed (TfL)"
  homepage "https://github.com/timsearle/tunnel-watch"
  url "https://github.com/timsearle/tunnel-watch/releases/download/v0.5.0/tunnel-watch-macos-arm64.zip"
  sha256 "9379a9167aed64ef5d8ed9b62d6941c4003f4d545c73a68b0782e4e8b220b741"
  version "0.5.0"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tunnel-watch"
  end

  test do
    system "#{bin}/tunnel-watch", "--help"
  end
end
