# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Opslevel Command Line Utility"
  homepage "https://www.opslevel.com/"
  version "2024.1.16"
  license "MIT"

  depends_on "jq"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpsLevel/cli/releases/download/v2024.1.16/opslevel-darwin-arm64.tar.gz"
      sha256 "6842f50ba2107324467ff10552dc554a17170834d400c71c640f2d59e842c169"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/v2024.1.16/opslevel-darwin-amd64.tar.gz"
      sha256 "b44322be42af86ee0403ddbc1660fdcba16ec18c12df91a0686f08257f833efe"

      def install
        bin.install "opslevel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/v2024.1.16/opslevel-linux-amd64.tar.gz"
      sha256 "6bb63a26cf9fd67ae8c69d6aaed560f2fea6692d37cfeb45d6a27347f037277b"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/cli/releases/download/v2024.1.16/opslevel-linux-arm.tar.gz"
      sha256 "567199382096c9715782c8afe65f77626f4bd43791be92dd5128a31be4c8fe8d"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/cli/releases/download/v2024.1.16/opslevel-linux-arm64.tar.gz"
      sha256 "4e2ca7045f45717cd9ecb18856fab6937199a034723561c332d2c0cba00e7be2"

      def install
        bin.install "opslevel"
      end
    end
  end

  test do
    system "#{bin}/opslevel version"
  end
end
