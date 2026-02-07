class TunnelWatch < Formula
  desc "Report whether the Rotherhithe Tunnel is open or closed (TfL)"
  homepage "https://github.com/timsearle/tunnel-watch"
  url "https://github.com/timsearle/tunnel-watch/releases/download/v0.5.0/tunnel-watch-macos-arm64.zip"
  sha256 "bff66a72baaa78fc3b9bf52fb4eb34177023c278bc2b709183ee125a702b1105"
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
