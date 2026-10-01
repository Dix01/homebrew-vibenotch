cask "vibenotch" do
  version "1.0.0"
  sha256 "0967d43934c31fe59e487a8b5239e46b412a90f9aa85261a4d0372fd80177524"

  url "https://github.com/Dix01/homebrew-vibenotch/releases/download/v#{version}/VibeNotch-#{version}.zip"
  name "VibeNotch"
  desc "Monitor coding agents and handle approvals from the MacBook notch"
  homepage "https://github.com/Dix01/homebrew-vibenotch"

  depends_on macos: ">= :sonoma"

  app "VibeNotch.app"

  uninstall quit: "app.vibenotch.VibeNotch"

  zap trash: [
    "~/.vibenotch",
    "~/Library/Preferences/app.vibenotch.VibeNotch.plist",
  ]

  caveats <<~EOS
    This beta is not notarized. If macOS blocks the first launch, open
    System Settings > Privacy & Security and choose Open Anyway for VibeNotch.
    On first launch, choose Connect agents to enable your coding agents.
  EOS
end
