# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.9.4/models-x86_64-apple-darwin.tar.gz"
      sha256 "5ba18a82071a261e8f3b9b9203e9b5c533a488d4fa2b93254962fec405ca2524"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.9.4/models-aarch64-apple-darwin.tar.gz"
      sha256 "94c02d39e17c40b195532baf015342f791e743ed8cd3c54d2266b139e9458fa6"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.4/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90b9bb5846a71f844c0212bed9f39587dfddb1e6045cf6462a05ae64788202a0"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.4/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0314748d138457340f826d086d564464db2cab8ede18ce7e974aefe55fe14036"
      def install
        bin.install "models"
      end
    end
  end
end
