cask "qgenie" do
  version "0.0.2"
  sha256 "7d0cc3b74477cf34a5ebbd4bdad0d0fd669623c4f7183d0b4fa2d0d2c63c6ca5"

  url "https://github.com/Queryus/QGenie_app/releases/download/v0.0.2/QGenie-0.0.2.dmg"
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