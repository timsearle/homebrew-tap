class TunnelWatch < Formula
  desc "Report whether the Rotherhithe Tunnel is open or closed (TfL)"
  homepage "https://github.com/timsearle/tunnel-watch"
  url "https://github.com/timsearle/tunnel-watch/releases/download/v0.7.0/tunnel-watch-macos-arm64.zip"
  sha256 "5b207dc7adc74c020d29d16e5d6a9d0793e74e2ac45eec88d4482f3603b20307"
  version "0.7.0"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tunnel-watch"
  end

  test do
    system "#{bin}/tunnel-watch", "--help"
  end
end
