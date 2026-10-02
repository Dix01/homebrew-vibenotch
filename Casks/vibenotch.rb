cask "vibenotch" do
  version "1.0.2"
  sha256 "ae56629fa861f1e1fe00a62a7d8ab66ac6b53fa63e4bfbd8f16c8f6ca458e659"

  url "https://github.com/Dix01/homebrew-vibenotch/releases/download/v#{version}/VibeNotch-#{version}.zip"
  name "VibeNotch"
  desc "Monitor coding agents and handle approvals from the MacBook notch"
  homepage "https://github.com/Dix01/homebrew-vibenotch"

  depends_on macos: :sonoma

  app "VibeNotch.app"

  uninstall quit: "app.vibenotch.VibeNotch"

  zap trash: [
    "~/.vibenotch",
    "~/Library/Preferences/app.vibenotch.VibeNotch.plist",
  ]

  caveats <<~EOS
    On first launch, choose Connect agents to enable your coding agents.
  EOS
end
