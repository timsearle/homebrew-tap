class TunnelWatch < Formula
  desc "Report whether the Rotherhithe Tunnel is open or closed (TfL)"
  homepage "https://github.com/timsearle/tunnel-watch"
  url "https://github.com/timsearle/tunnel-watch/releases/download/v0.3.0/tunnel-watch-macos-arm64.zip"
  sha256 "e47a74d1ad7c74603e4a514f29e909ec93c01a325d35007107289f6826253252"
  version "0.3.0"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tunnel-watch"
  end

  test do
    system "#{bin}/tunnel-watch", "--help"
  end
end
