# Template for <owner>/homebrew-marchy/Casks/marchy.rb (filled in by .github/workflows/release.yml).
#   brew tap <owner>/marchy && brew trust <owner>/marchy && brew install --cask marchy
cask "marchy" do
  version "0.1.2"
  sha256 "a389e797c73998020062b55d8e7fbe3385d5444f9eb7c7620ea85df83b480524"

  url "https://github.com/lucidfeed-wq/marchy/releases/download/v#{version}/Marchy-#{version}.dmg"
  name "Marchy"
  desc "Omarchy-style keyboard-driven desktop (unofficial)"
  homepage "https://github.com/lucidfeed-wq/marchy"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Marchy.app"

  zap trash: "~/Library/Application Support/Marchy"

  caveats <<~EOS
    Open Marchy and press Set Up on the Home screen.

    This build is not notarized yet. If macOS says Marchy can't be opened, go to
    System Settings > Privacy & Security and click "Open Anyway" (once).
  EOS
end
