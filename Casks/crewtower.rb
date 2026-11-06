cask "crewtower" do
  version "1.0.40"
  sha256 "a4ffb653d86c85e40e0d6a403910d3e6e103c9350626ad587114bb021db77b2c"

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
