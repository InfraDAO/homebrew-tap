class Cinder < Formula
  desc "Developer CLI for Canton Network: runs filters over a validator's PQS"
  homepage "https://github.com/InfraDAO/canton-indexer-releases"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-aarch64-darwin"
      sha256 "93bff813b612eaaed8bb521d8ab422323878d4c1c6ed7ab3295bf10195c72434"
    end
    on_intel do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-x86_64-darwin"
      sha256 "0ce873fe901177c2699f4fb30b6ce86bc58c9dd19d28d2813137b69ad62767c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-aarch64-linux"
      sha256 "8b740b86722aef701a4e151f43ca54e2b9f2d2d597fd74f04e7b85eee269e5e3"
    end
    on_intel do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-x86_64-linux"
      sha256 "4bad9cd22684275d56851613648ac01739019e375bbe756c0ef4917a493dc2a6"
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
