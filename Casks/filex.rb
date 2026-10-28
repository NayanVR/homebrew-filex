cask "filex" do
  version "0.5.0"
  sha256 "7d515eff5dfd48795e80382905d3fc2520658d164dfe8327520cbd8717922001"

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
