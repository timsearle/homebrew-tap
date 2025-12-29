class SwiftDependencyGraph < Formula
  desc "Dependency graph generator for Xcode + SwiftPM projects"
  homepage "https://github.com/timsearle/swift-dependency-graph"
  url "https://github.com/timsearle/swift-dependency-graph/releases/download/v0.17.0/DependencyGraph-macos-arm64.zip"
  sha256 "41f8c426749634e49fce6a7028110275f8e5417dc4bb0a21efcfe24beec59b08"
  version "0.17.0"
  license "MIT"

  depends_on arch: :arm64

  def install
    # Canonical command name.
    bin.install "DependencyGraph" => "dependency-graph"

    # Compatibility alias.
    bin.install_symlink "dependency-graph" => "DependencyGraph"
  end

  test do
    system "#{bin}/dependency-graph", "--help"
  end
end
