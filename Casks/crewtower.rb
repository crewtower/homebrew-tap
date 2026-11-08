cask "crewtower" do
  version "1.0.42"
  sha256 "14a1a507d43813e85796a6c967c6ff0ca6df278847cd493a401d58e482e1bf6e"

  url "https://dl.crewtower.app/CrewTower-#{version}.dmg"
  name "CrewTower"
  desc "Notch panel to monitor and approve AI coding agents"
  homepage "https://crewtower.app/"

  livecheck do
    url "https://dl.crewtower.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "CrewTower.app"

  uninstall quit: "app.crewtower.CrewTower"

  zap trash: [
    "~/Library/Application Support/CrewTower",
    "~/Library/Caches/app.crewtower.CrewTower",
    "~/Library/HTTPStorages/app.crewtower.CrewTower",
    "~/Library/Preferences/app.crewtower.CrewTower.plist",
  ]
end
