# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.8.0/models-x86_64-apple-darwin.tar.gz"
      sha256 "1a55130390b9a38e24f09716de458e906bf8221ed8134d3d00c08ff0d76e0d6a"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.8.0/models-aarch64-apple-darwin.tar.gz"
      sha256 "197eafeb364f3f4d798aee8f42ea600e8ba30895ed156cb897707c95d89443e5"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.0/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "41de78d7c6cc4d4dea29cb94f1feb063ba66cf8175f5ebecaffb0e09b45f8bfb"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.0/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1fdae9b2e747b6a6542846121f112e31d4bddf5105f60f0cfba9c452c7cb7658"
      def install
        bin.install "models"
      end
    end
  end
end
