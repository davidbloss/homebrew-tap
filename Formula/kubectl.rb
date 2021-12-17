# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubectl < Formula
  desc "Command line tool that enables you to import & reconcile services with OpsLevel"
  homepage "https://www.opslevel.com/"
  version "0.6.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/kubectl-opslevel/releases/download/v0.6.6/kubectl-opslevel-darwin-amd64.tar.gz"
      sha256 "8fea20364517b379bec782313f542cef9ad30047a0222d595208be7c3895226f"

      def install
        bin.install "kubectl-opslevel"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OpsLevel/kubectl-opslevel/releases/download/v0.6.6/kubectl-opslevel-darwin-arm64.tar.gz"
      sha256 "a0fabd6488807658932e893848bb9fae35935c7f1f22abce90d101f83c085f33"

      def install
        bin.install "kubectl-opslevel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/kubectl-opslevel/releases/download/v0.6.6/kubectl-opslevel-linux-arm.tar.gz"
      sha256 "cec49be11a99d0352d507b22aa4feedbfe5e3aa14325579181aa3ca854d49104"

      def install
        bin.install "kubectl-opslevel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/kubectl-opslevel/releases/download/v0.6.6/kubectl-opslevel-linux-arm64.tar.gz"
      sha256 "dda87af50e2b3fb88e6cd771c2cbcd96aff8f1931861ff0ef3986793a1bb5c40"

      def install
        bin.install "kubectl-opslevel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/kubectl-opslevel/releases/download/v0.6.6/kubectl-opslevel-linux-amd64.tar.gz"
      sha256 "17face2d33d6b7cc07570c96439e2fc855685fd283eaec3dd7befe6f29c3e950"

      def install
        bin.install "kubectl-opslevel"
      end
    end
  end

  depends_on "jq"

  test do
    system "#{bin}/kubectl-opslevel version"
  end
end
