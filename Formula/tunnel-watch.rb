class TunnelWatch < Formula
  desc "Report whether the Rotherhithe Tunnel is open or closed (TfL)"
  homepage "https://github.com/timsearle/tunnel-watch"
  url "https://github.com/timsearle/tunnel-watch/releases/download/v0.6.0/tunnel-watch-macos-arm64.zip"
  sha256 "5bd0007622c3f84a4d456c4a7bb15d8287c69914b3b83de10d231fdca74af0e1"
  version "0.6.0"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tunnel-watch"
  end

  test do
    system "#{bin}/tunnel-watch", "--help"
  end
end
