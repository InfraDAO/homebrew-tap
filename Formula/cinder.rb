class Cinder < Formula
  desc "Developer CLI for Canton Network: runs filters over a validator's PQS"
  homepage "https://github.com/InfraDAO/canton-indexer-releases"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-aarch64-darwin"
      sha256 "32654799e00f7a3eadee5d2d553cca0aa43a656e5c79e7cdd26648ef1edd65a2"
    end
    on_intel do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-x86_64-darwin"
      sha256 "af5af2ba0dc7c344517d83d665c2b22f5faf04672fa9d255bb65769a0af9bfca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-aarch64-linux"
      sha256 "34712e91eef495d7727373a2b0df2f413c8d229333a8349a47e93c0d7c5bb31e"
    end
    on_intel do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-x86_64-linux"
      sha256 "ca29d872faf0e18c7d402386ee35a5ef8e9781332bd304137c427f8560cfc6bb"
    end
  end

  def install
    binary = Dir["cinder-*"].first || "cinder"
    bin.install binary => "cinder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cinder --version")
  end
end
