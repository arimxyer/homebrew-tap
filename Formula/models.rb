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
      sha256 "e091f814a33d9f4888166c70ed6824d42ba9c19e439c12d3589859f80994a8d8"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.4.0/models-aarch64-apple-darwin.tar.gz"
      sha256 "31623c99e06480ab77c829235f6d2315ad943dd1b66b187f861ed622e6184651"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.4.0/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "234667cefca3f03c12f5ac899f70566eb5770ee406fc33a24c08bc5da5cb1837"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.4.0/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1eb0ce417d538ada7777c9f408c37c8d986a43041e66c21486aca9783b0f967"
      def install
        bin.install "models"
      end
    end
  end
end
