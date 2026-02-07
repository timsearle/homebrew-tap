class TunnelWatch < Formula
  desc "Report whether the Rotherhithe Tunnel is open or closed (TfL)"
  homepage "https://github.com/timsearle/tunnel-watch"
  url "https://github.com/timsearle/tunnel-watch/releases/download/v0.2.0/tunnel-watch-macos-arm64.zip"
  sha256 "5009a8226c689456d91f5a6ffa647a3674486814cff9c400010ef8c89a6d1b94"
  version "0.2.0"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tunnel-watch"
  end

  test do
    system "#{bin}/tunnel-watch", "--help"
  end
end
