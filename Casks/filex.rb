cask "filex" do
  version "0.4.2"
  sha256 "df1cca1881ad61dba1788eef0193247796f2f3e709e078f2756b2b4e9c0aa9c5"

  url "https://github.com/NayanVR/Filex/releases/download/v#{version}/filex-#{version}-macos.tar.gz"
  name "Filex"
  desc "Fast cross-platform file explorer"
  homepage "https://github.com/NayanVR/Filex"

  app "Filex.app"

  # Quit the app before an upgrade; Homebrew reopens it afterwards. A
  # running filex-indexd isn't stopped here: it notices its replaced binary
  # and restarts itself (FIL-21).
  uninstall quit: "dev.filex.app"

  # Only on --zap. An uninstall launchctl: entry also runs on every upgrade and
  # deletes the plist of the opt-in launch agent (packaging/launchd).
  zap launchctl: "dev.filex.indexd"
end
