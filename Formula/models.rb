# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.8.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.8.5/models-x86_64-apple-darwin.tar.gz"
      sha256 "d5e9ebc23a71789c8fded04108be2dc98f2f9af228a611aa49a8a2c88c47d598"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.8.5/models-aarch64-apple-darwin.tar.gz"
      sha256 "4d6c937497b62667c6aa087a90ddbebcb5f106098a3a3531bf046a1103aeb0f4"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.5/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ab21cd343753e50ae8506fab470be6f0ec867394c99d99e724913fab6042380"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.5/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a451503bdeb0a206e1a48e233ce7e75ec67df7cb65d7a74a97511bc5b90a22d"
      def install
        bin.install "models"
      end
    end
  end
end
