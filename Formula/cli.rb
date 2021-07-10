# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
    desc "Opslevel Command Line Utility"
    homepage "https://www.opslevel.com/"
    version "v0.1.0-beta.1"
    license "MIT"
    bottle :unneeded
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/OpsLevel/cli/releases/download/v0.1.0-beta.1/cli_darwin_amd64.tar.gz"
        sha256 "605e81ca0697836b72598bceed4b5cf626ca2ebeb95a695130372753e2aca06b"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/OpsLevel/cli/releases/download/v0.1.0-beta.1/cli_linux_amd64.tar.gz"
        sha256 "87e216175d337394ccc234a068976ca454c3f30b3d48e8c8dfac5525a3f05be9"
      end
    end
  
    depends_on "jq"
  
    def install
      bin.install "opslevel"
    end
  
    test do
      system "#{bin}/opslevel version"
    end
  end