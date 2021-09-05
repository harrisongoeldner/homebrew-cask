cask "athens" do
  version "1.0.0-beta.96"

  if Hardware::CPU.intel?
    sha256 
    url "https://github.com/athensresearch/athens/releases/download/#{version}/Athens-#{version}.dmg"
  else
    sha256
    url "https://github.com/athensresearch/athens/releases/download/#{version}/Athens-#{version}-arm64.dmg"
  end

  name "Athens"
  desc "Athens is a knowledge graph for research and notetaking."
  homepage "https://github.com/athensresearch/athens"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Athens.app"

  zap trash: [
    "~/Library/Application Support/Athens"
    "~/Library/Preferences/com.athensresearch.athens.plist"
    "~/Library/Logs/Athens"
    "~/Library/Saved Application State/com.athensresearch.athens.savedState"
  ]
end