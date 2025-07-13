cask "qgenie" do
  version "0.0.2"
  sha256 "54cc817a3c5a050d373e65a130800fa3649104f5a399b650b24b22eb7c661e0d"

  url "https://github.com/Queryus/QGenie_app/releases/download/v0.0.2/QGenie-0.0.1-arm64.dmg"
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