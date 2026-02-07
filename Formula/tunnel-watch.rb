class TunnelWatch < Formula
  desc "Report whether the Rotherhithe Tunnel is open or closed (TfL)"
  homepage "https://github.com/timsearle/tunnel-watch"
  url "https://github.com/timsearle/tunnel-watch/releases/download/v0.5.0/tunnel-watch-macos-arm64.zip"
  sha256 "03e629f4828acf680895207a94fa601db09334f7e0729e8d13e2f3fdf79a890e"
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
