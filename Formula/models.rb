# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.9.3/models-x86_64-apple-darwin.tar.gz"
      sha256 "16fabd2b63b9ad6164c39fc11caa4a5b1ac8b5766423306af654298405be9312"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.9.3/models-aarch64-apple-darwin.tar.gz"
      sha256 "000e815469711d0ae2ba404599e796956670983e49331eee81f4717c5f5f048c"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.3/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "73718f04c1da8260724402eb443589c5b0e644ce20d89824a50f4f119400c6df"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.3/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e8be7ccc8739a3b2fc53fb76245abbd2f42d27112c7b8e4c26ec81cf42facadb"
      def install
        bin.install "models"
      end
    end
  end
end
