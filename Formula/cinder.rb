class Cinder < Formula
  desc "Developer CLI for Canton Network: runs filters over a validator's PQS"
  homepage "https://github.com/InfraDAO/canton-indexer-releases"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-aarch64-darwin"
      sha256 "69bf87804b4f59f1a33e5161e5fea5d77b6f253b9534d751a526649a6e7b186f"
    end
    on_intel do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-x86_64-darwin"
      sha256 "9df563c4cff0540370573ab61d1a020d418fec98e766d263d9ffa9719a392d79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-aarch64-linux"
      sha256 "3a54904f94904b06c0ef790149f5af8aed8b070a48a338940bbcc7e899b156a9"
    end
    on_intel do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-x86_64-linux"
      sha256 "258f560a149a8ec660a41240babaf1207472707cdc27f071182c7a51d6a06b16"
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
