cask "qgenie" do
  version "0.0.2"
  sha256 "36b60294c2dbbbf8b6b653722c2ba842df8cd5551c78a3f2b8b349774988541e"

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