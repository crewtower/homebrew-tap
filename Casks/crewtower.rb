cask "crewtower" do
  version "1.0.41"
  sha256 "8fbfe7e7ee1f9b78a8cff18427d33a7e66b415db25d7791a044af6c9845def8d"

  url "https://dl.crewtower.app/CrewTower-#{version}.dmg?source=homebrew"
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
