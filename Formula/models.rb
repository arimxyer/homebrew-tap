# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.8.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.8.6/models-x86_64-apple-darwin.tar.gz"
      sha256 "e66abfb208db46cdee23b0e64f014c330a4b7233242b0db76bcf7b5a21345a8d"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.8.6/models-aarch64-apple-darwin.tar.gz"
      sha256 "5ea44038d45dce9d63a269f1a4bce67ce1542eb6e0590cc13607de6151998175"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.6/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd0035ca669e30358d01ca35289f00ec02cd9c3a56152c48b240c727dc8e0451"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.6/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "458834cd9dd755f3beda772b66aa48fada0d0021dbbdb8d5155fae54862407e1"
      def install
        bin.install "models"
      end
    end
  end
end
