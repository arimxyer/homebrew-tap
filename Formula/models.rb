# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.8.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.8.4/models-x86_64-apple-darwin.tar.gz"
      sha256 "747eb5063b8738e5d3a1a418de8a989812e1baae592b859bab413da9578e981f"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.8.4/models-aarch64-apple-darwin.tar.gz"
      sha256 "085fae9ec4509e709cdced0c85e510ca5e91038d4b1fc9c327cae41a3d2b2010"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.4/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "506fcb2fc70996615d4c994ecc69228f0e860983439025df64f933297c1d3fb3"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.4/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63e0709dccced8f10a5bd0e2aa7046ddcacb4c78c910c2904148c525987b4c46"
      def install
        bin.install "models"
      end
    end
  end
end
