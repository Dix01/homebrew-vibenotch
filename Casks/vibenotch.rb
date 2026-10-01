cask "vibenotch" do
  version "1.0.1"
  sha256 "73b97ed4390a94e66ec5a1d4df7f845c38edd018641a2e3e76323a39540df13e"

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
