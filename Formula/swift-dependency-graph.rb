class SwiftDependencyGraph < Formula
  desc "Dependency graph generator for Xcode + SwiftPM projects"
  homepage "https://github.com/timsearle/swift-dependency-graph"
  url "https://github.com/timsearle/swift-dependency-graph/releases/download/v0.17.0/DependencyGraph-macos-arm64.zip"
  sha256 "41f8c426749634e49fce6a7028110275f8e5417dc4bb0a21efcfe24beec59b08"
  version "0.17.0"
  license "MIT"

  depends_on arch: :arm64

  def install
    # Transition-friendly: older archives contained `DependencyGraph`, newer contain `dependency-graph`.
    bin_name = File.exist?("dependency-graph") ? "dependency-graph" : "DependencyGraph"
    bin.install bin_name => "dependency-graph"
  end

  test do
    system "#{bin}/dependency-graph", "--help"
  end
end
