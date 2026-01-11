# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.2.0/models-x86_64-apple-darwin.tar.gz"
      sha256 "e09a6461b2b184c8654e47bf935c3d10d96fa569b97cc805da67c4161a16906a"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.2.0/models-aarch64-apple-darwin.tar.gz"
      sha256 "2ed304852545e09e6c130bdba23267608ff2d630b583613b890cdf54ee516aa9"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.2.0/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6163dde90f73034d50b50920b2a084bdfe3412b0df76941a46e4576fbabf4f3e"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.2.0/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a4e445bf97d0612f748039e90408e14cba8af1c1027c5fcc01a484ff6a70fb0"
      def install
        bin.install "models"
      end
    end
  end
end
