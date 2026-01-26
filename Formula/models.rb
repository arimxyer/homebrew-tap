# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.5.0/models-x86_64-apple-darwin.tar.gz"
      sha256 "c44d742008e1c8ab95bbe9f08ecf29e5ba8d9e4e98def33a7b48de09e3d54c64"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.5.0/models-aarch64-apple-darwin.tar.gz"
      sha256 "8b522067e6ce6ca5dab161e0976aaf10f8d4a50e40dae16d437f70199e12909e"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.5.0/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fba90d0b4b74ce6131403da3d8670772fb4e63bc3df210fe500736574de8452a"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.5.0/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "541057d08a6093b909b8498d9cebc8fff81c4cf228519eb63f489f6ad1ef6416"
      def install
        bin.install "models"
      end
    end
  end
end
