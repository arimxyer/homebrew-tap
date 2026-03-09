# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.10.0/models-x86_64-apple-darwin.tar.gz"
      sha256 "872b1781023f0e9ff3c004c57eb81add442acbb6248fb70415ab808b6abcf292"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.10.0/models-aarch64-apple-darwin.tar.gz"
      sha256 "5b31d8389ed1649c10fa5fc6e1ba31a7b081d79dc10d40e13930ffc82c92e4eb"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.10.0/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27b7be7b01f01a1b474fcbcc62601941931c2cf4cc3b2d6f6cff267306dde7b5"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.10.0/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f4bf773bec8e193fad8e2e5b429da8a0716ac9fde5c28d375fcd6bb1b89a260"
      def install
        bin.install "models"
      end
    end
  end
end
