# typed: false
# frozen_string_literal: true

class RmbugAgent < Formula
  desc "rmBug Agent — secure identity-based database access"
  homepage "https://rmbug.com"
  version "1.0.14"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/rmbug/agent/releases/download/v1.0.14/rmbug-agent_1.0.14_darwin_arm64.tar.gz"
      sha256 "e8779f1f1cbfb87c6ee7450962e14595d5e7483b8c25a5318dc7847c8084f80e"
    end
    on_intel do
      url "https://github.com/rmbug/agent/releases/download/v1.0.14/rmbug-agent_1.0.14_darwin_amd64.tar.gz"
      sha256 "c4f716dc6113b5e65e14c7e1b5fb2805488dbaec4337bc42d663741a7c50e12e"
    end
  end

  def install
    bin.install "rmbug-agent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rmbug-agent version 2>&1", 1)
  end
end
