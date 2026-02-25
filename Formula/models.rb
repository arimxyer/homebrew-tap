# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.9.2/models-x86_64-apple-darwin.tar.gz"
      sha256 "bfb1af526257f675ed34380baefdf847962970d681f7174b4c907214614b9fef"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.9.2/models-aarch64-apple-darwin.tar.gz"
      sha256 "93fb0240cc569ccfec32512abef2b38aa28b6d7d8efee393f2df3f08a0789fa8"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.2/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b985feaac119c8b60bb448fa1ac8e432260ac51e1bb9231993d3b58e0e4de78"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.2/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5329e8772a10199f7d8cc2efe0a9f7cc9d80a3b6490b05bd5182828e0373ee76"
      def install
        bin.install "models"
      end
    end
  end
end
