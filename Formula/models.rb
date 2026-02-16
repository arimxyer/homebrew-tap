# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.8.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.8.3/models-x86_64-apple-darwin.tar.gz"
      sha256 "d6f250f151e7af83abd4f0a29853eec84a8f7f4782adfc415dc8627017d16200"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.8.3/models-aarch64-apple-darwin.tar.gz"
      sha256 "0a39c08d28e6e47421e614ecfc721cc56f88fc9e169397be81731d9f51c1efbf"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.3/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "acde194728aa0b09891b32ccbe001c2291d67ac3afa5713c2002323f25fa39de"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.3/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54d69f5fae2c4d30cf7fe80aca0f2f528c1cf01c1c6c1c4858e8d3e514bb19e8"
      def install
        bin.install "models"
      end
    end
  end
end
