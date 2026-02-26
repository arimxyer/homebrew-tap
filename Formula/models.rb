# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.9.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.9.5/models-x86_64-apple-darwin.tar.gz"
      sha256 "1bea411429eefb3c587a6380999dfd9c032ecdf60c16c3dfbf325ed7f7f55945"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.9.5/models-aarch64-apple-darwin.tar.gz"
      sha256 "7af39ca3a6e5bb1bb7c36df831c58f8318ed65825505a58305f2d477e09053ee"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.5/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79568e1953f13194e3828b9c77a9434b42621edebaee2097f9900aed4d3cc7f4"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.5/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f0a19d649085294e34cf8fd60f069f1dc2ec6ff2a2f69694a61ba3e22a52ab4"
      def install
        bin.install "models"
      end
    end
  end
end
