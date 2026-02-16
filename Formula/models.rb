# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.8.2/models-x86_64-apple-darwin.tar.gz"
      sha256 "ac64f89052cf4b900baac716d8468045ecdf05bf56e3d4a3108727c1c9d5182b"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.8.2/models-aarch64-apple-darwin.tar.gz"
      sha256 "192937e92f97fb85ea9f670896a4f1014b11d2576de51c0301bc8318e5e1b4a9"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.2/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b83489e043af6b64a3d19e70ba0279b73993361aa6a71fc2046436d49a2447c7"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.2/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b2d973c7bd1bbaa7b1dccb5a9b3464b544a596476f5271c3a60db3b8393cbc6"
      def install
        bin.install "models"
      end
    end
  end
end
