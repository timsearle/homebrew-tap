class TunnelWatch < Formula
  desc "Report whether the Rotherhithe Tunnel is open or closed (TfL)"
  homepage "https://github.com/timsearle/tunnel-watch"
  url "https://github.com/timsearle/tunnel-watch/releases/download/v0.1.0/tunnel-watch-macos-arm64.zip"
  sha256 "2f5dc13af4e8dd17b43c159cb5187aea7b3bb0aaa8f750adb1c83e0af8927838"
  version "0.1.0"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tunnel-watch"
  end

  test do
    system "#{bin}/tunnel-watch", "--help"
  end
end
