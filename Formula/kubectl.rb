# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubectl < Formula
  desc 'Command line tool that enables you to import & reconcile services with OpsLevel'
  homepage 'https://www.opslevel.com/'
  version '2024.1.27'
  license 'MIT'

  depends_on 'go'
  depends_on 'jq'
  depends_on :macos

  on_macos do
    url 'https://github.com/OpsLevel/kubectl-opslevel/archive/refs/tags/v2024.1.27.tar.gz'
    sha256 'ca9a8f9f513161592068d7c5003b5311e49b010f43ff8effc65bb23e0f1c4a08'

    def install
      ENV['CGO_ENABLED'] = '1'
      ENV['CGO_CFLAGS'] = "-I#{Formula['jq'].opt_include}"
      ENV['CGO_LDFLAGS'] = "-L#{Formula['jq'].opt_lib}"

      cd 'src' do
        system 'go', 'build', *std_go_args(output: bin / 'kubectl-opslevel', ldflags: '-s -w')
      end
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Kubectl
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  test do
    system "#{bin}/kubectl-opslevel", 'version'
  end
end
