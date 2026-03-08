# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.9.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.9.8/models-x86_64-apple-darwin.tar.gz"
      sha256 "c7889897f173cba370f330de7b98520f8a26b0aec32e153f1022cd4cf8b8ae8f"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.9.8/models-aarch64-apple-darwin.tar.gz"
      sha256 "baee8bdf7a8e58835adc19361c50ffb6a80b4302d31cc492404d4bc96ffdc69a"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.8/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1315dfed3957bb510cf6205ed7de7010f75fc21367471920fea2ed750c9e65f0"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.8/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "039fa60a08d26f2761d89abf887b208ab27f90297a6a975d91eb9e5f452e161a"
      def install
        bin.install "models"
      end
    end
  end
end
