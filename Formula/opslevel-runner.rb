# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpslevelRunner < Formula
  desc "Command line tool that runs jobs for OpsLevel"
  homepage "https://www.opslevel.com/"
  version "2023.10.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2023.10.5/opslevel-runner-darwin-amd64.tar.gz"
      sha256 "8c3099e32355b3c59092dfd23f090c78464e24fe9531b0dc01c911c1d6465f6f"

      def install
        bin.install "opslevel-runner"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2023.10.5/opslevel-runner-darwin-arm64.tar.gz"
      sha256 "e67c018e4619d09085380e29cfb7e6cb59b344975f9a4845f94affc74a6b0488"

      def install
        bin.install "opslevel-runner"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2023.10.5/opslevel-runner-linux-arm64.tar.gz"
      sha256 "3676771aa36101610ddb400106c07ce8ea7e8b5ea69ed20a9aeef98b7f7f96eb"

      def install
        bin.install "opslevel-runner"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2023.10.5/opslevel-runner-linux-arm.tar.gz"
      sha256 "37a3c593d63e3b1e4be3ee6ed457d7290b0d6b099d2664ee6047fdd295992391"

      def install
        bin.install "opslevel-runner"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2023.10.5/opslevel-runner-linux-amd64.tar.gz"
      sha256 "a6ebcd54db0f7fd9ce33b0220e5399d32027e8196235b1499113c7a6f950cd2f"

      def install
        bin.install "opslevel-runner"
      end
    end
  end

  test do
    system "#{bin}/opslevel-runner version"
  end
end
