# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.8.1/models-x86_64-apple-darwin.tar.gz"
      sha256 "1568190ae5787304da813674eb8183e273dd9ec641175a02e6ec5887d6509231"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.8.1/models-aarch64-apple-darwin.tar.gz"
      sha256 "a9e9b49805f62388b4ee7ab7386e72c561f2d9912ab6b2c5a5d462e33c0bb608"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.1/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa7d7668696efa8cf63b1962310d3222d6b125234badeec27e573c324ea29f7c"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.1/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4972d2766dddb795eb602b884e3bc3b4be51b45b01b029a4eb0effc578b81634"
      def install
        bin.install "models"
      end
    end
  end
end
