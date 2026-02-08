class TunnelWatch < Formula
  desc "Report whether the Rotherhithe Tunnel is open or closed (TfL)"
  homepage "https://github.com/timsearle/tunnel-watch"
  url "https://github.com/timsearle/tunnel-watch/releases/download/v0.5.0/tunnel-watch-macos-arm64.zip"
  sha256 "09fab44f6d343741c23d5fe29fec831fa2407e9f7440b90128c4a1a92e9d5396"
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
