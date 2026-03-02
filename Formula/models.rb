# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.9.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.9.6/models-x86_64-apple-darwin.tar.gz"
      sha256 "9738fd65731b2de2c9de841b0da17c1882146674b371af78a8551c5886b2ef93"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.9.6/models-aarch64-apple-darwin.tar.gz"
      sha256 "6bddf6f6d9ddbb1da2d145b3f7371a9c1d3c52e36c52fcc990d01c21afd4d95f"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.6/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c009f0ab4020ba8c93dfb2b326af9fea3c7c472797c6096b0231bf2f3b9c511"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.6/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e905fc5edbf2f83485c73a286d5ff438bf2008ccc01b2844b769ee4bd41c41c2"
      def install
        bin.install "models"
      end
    end
  end
end
