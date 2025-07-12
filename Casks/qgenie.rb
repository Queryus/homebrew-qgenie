cask "qgenie" do
  version "0.0.3"
  sha256 "32c9c3c7db195787300e410f018cc754266307161fa816a52320f7ebc8fe4074"

  url "https://github.com/Queryus/QGenie_app/releases/download/v0.0.3/QGenie-0.0.1-arm64.dmg"
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