cask "qgenie" do
  version "0.0.1"
  sha256 "10372cb5ea023c0a04122166211ecc8746491d5e92437513099f7f12c4be1f7f"

  url "https://github.com/Queryus/QGenie_app/releases/download/v0.0.1/QGenie-0.0.1-arm64.dmg"
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