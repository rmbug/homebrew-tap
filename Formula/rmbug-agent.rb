# typed: false
# frozen_string_literal: true

class RmbugAgent < Formula
  desc "rmBug Agent — secure identity-based database access"
  homepage "https://rmbug.com"
  version "1.0.16"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/rmbug/agent/releases/download/v1.0.16/rmbug-agent_1.0.16_darwin_arm64.tar.gz"
      sha256 "3dff7c6daffd75878c16176b4e87bc4d122ac10a0bee674d0639789b7acc2989"
    end
    on_intel do
      url "https://github.com/rmbug/agent/releases/download/v1.0.16/rmbug-agent_1.0.16_darwin_amd64.tar.gz"
      sha256 "c4c726bc39e1c7dbaaf3567bf6c5d0677a194d0632503bad29b4a7af847610c2"
    end
  end

  def install
    bin.install "rmbug-agent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rmbug-agent version 2>&1", 1)
  end
end
