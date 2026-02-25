# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.9.1/models-x86_64-apple-darwin.tar.gz"
      sha256 "4f98e55315cfc6bd2b1103010da00caab3f55c541a85a69d28d8231df92c1c11"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.9.1/models-aarch64-apple-darwin.tar.gz"
      sha256 "e2141b701f3cdb79b4163aafd5f2aefde3e343a0d2682f5811de34fbc4e2f532"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.1/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f687f9a3e5db1aa36d97349218f96812c3a512cf9dc7668cec0dd7f398a61088"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.1/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "785d52cad2eb2c0fb48634251fae454c03221b103197ba7945720957df9d049c"
      def install
        bin.install "models"
      end
    end
  end
end
