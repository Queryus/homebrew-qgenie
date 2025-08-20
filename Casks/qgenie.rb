cask "qgenie" do
  version "dev1.0.0"
  sha256 "24b6f81da628aaf2d648ad880de5d3c56a51dbd2629fd4c95274b7899ae7c764"

  url "https://github.com/Queryus/QGenie_app/releases/download/dev1.0.0/QGenie-0.0.2.dmg"
  name "QGenie"
  desc "QGenie Application"
  homepage "https://github.com/Queryus/QGenie_app"
  app "QGenie.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/QGenie.app"]
  end

  zap trash: [
    "~/Library/Application Support/QGenie",
    "~/Library/Preferences/com.Queryus.QGenie.plist",
    "~/Library/Saved Application State/com.Queryus.QGenie.savedState",
  ]
end