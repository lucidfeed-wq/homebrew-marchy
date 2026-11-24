# Template for <owner>/homebrew-marchy/Casks/marchy.rb (filled in by .github/workflows/release.yml).
#   brew install --cask <owner>/marchy/marchy
cask "marchy" do
  version "0.1.0"
  sha256 "77b3c6b4a52b917ce3065f9a5565648e714f182e348f8bfc26cc90f650ccac34"

  url "https://github.com/lucidfeed-wq/marchy/releases/download/v#{version}/Marchy-#{version}.dmg"
  name "Marchy"
  desc "Omarchy-style keyboard-driven desktop for macOS (unofficial)"
  homepage "https://github.com/lucidfeed-wq/marchy"

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Marchy.app"

  caveats <<~EOS
    Open Marchy and press Set Up on the Home screen.

    This build is not notarized yet. If macOS says Marchy can't be opened, go to
    System Settings > Privacy & Security and click "Open Anyway" (once).
  EOS

  zap trash: "~/Library/Application Support/Marchy"
end
