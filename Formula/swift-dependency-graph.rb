class SwiftDependencyGraph < Formula
  desc "Dependency graph generator for Xcode + SwiftPM projects"
  homepage "https://github.com/timsearle/swift-dependency-graph"
  url "https://github.com/timsearle/swift-dependency-graph/releases/download/v0.16.0/DependencyGraph-macos-arm64.zip"
  sha256 "4337a687668b7af29370604f17564c17af843d30dcb794f245a4899dda3a0fad"
  version "0.16.0"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "DependencyGraph"
  end

  test do
    system "#{bin}/DependencyGraph", "--help"
  end
end
