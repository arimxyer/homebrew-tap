# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.9.0/models-x86_64-apple-darwin.tar.gz"
      sha256 "223f467703c1e83323afa0e296c7706a68c651c7a4551d1a86758e5c1c033ecf"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.9.0/models-aarch64-apple-darwin.tar.gz"
      sha256 "38af5827287ce211fae06723bb13344cb7de56fc4eb71110e3954c9c7fb2a473"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.0/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4597384df9797a695083adc9635a33a4676bdb3868436f3a7d57232ab9018c1c"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.0/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a2e10017203175f13646a30ec82945c217a49412fdabfaa40a29168d51c1988a"
      def install
        bin.install "models"
      end
    end
  end
end
