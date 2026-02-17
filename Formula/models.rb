# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.8.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.8.7/models-x86_64-apple-darwin.tar.gz"
      sha256 "7acd7c2b8011f5ed045360f6b81746f5bfbf62ab3f3289435e5900831d958ff3"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.8.7/models-aarch64-apple-darwin.tar.gz"
      sha256 "9854a927690f4465d9c471bca2bab2bdde80ff8ea3c1e84654333c2807b45828"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.7/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36e71143fa8083ecb1700ede45e911ed0958a2011694832b5dde5f8738589dd0"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.7/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c5351c448dfb8b631b5fd6220875e9e2d37d5cdd44003fcacccde01414ca7fa"
      def install
        bin.install "models"
      end
    end
  end
end
