cask "qgenie" do
  version "dev1.0.3"
  sha256 "6195b7becc4fe0ee5b9276e70956ab096de256fdd22885b7070f16c18c6e91a8"

  url "https://github.com/Queryus/QGenie_app/releases/download/dev1.0.3/QGenie-0.0.2.dmg"
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