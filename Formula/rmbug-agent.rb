# typed: false
# frozen_string_literal: true

class RmbugAgent < Formula
  desc "rmBug Agent — secure identity-based database access"
  homepage "https://rmbug.com"
  version "1.0.17"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/rmbug/agent/releases/download/v1.0.17/rmbug-agent_1.0.17_darwin_arm64.tar.gz"
      sha256 "d76381a2657a18e4023099defeaccff5049b335372b6dcfef6b7df40b4427d01"
    end
    on_intel do
      url "https://github.com/rmbug/agent/releases/download/v1.0.17/rmbug-agent_1.0.17_darwin_amd64.tar.gz"
      sha256 "3d704f9945bad8632b1805ed789b01fd92a6edd2b10f76e7c3815e67f80f3fbd"
    end
  end

  def install
    bin.install "rmbug-agent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rmbug-agent version 2>&1", 1)
  end
end
