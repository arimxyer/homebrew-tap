# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.4.0/models-x86_64-apple-darwin.tar.gz"
      sha256 "23704c8a856a56b83fc28a0c35e88082d71e446b078c67dbcaf150931625ac14"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.4.0/models-aarch64-apple-darwin.tar.gz"
      sha256 "2d4c553ade52b81c2f78a5c898b0e1255c2e4c19736d1efede97132333b2482d"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.4.0/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc5d30ccb6bfba1527fafb8b4a0bc01a181aeaae637693da0d7fa89d4660b6c9"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.4.0/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "333ebc44baa5030bc9b197b0d6285ccb6550cda1c5e006c217f86057095b73ee"
      def install
        bin.install "models"
      end
    end
  end
end
