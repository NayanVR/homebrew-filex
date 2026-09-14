cask "filex" do
  version "0.2.1"
  sha256 "8efbfd91897368cd10af6ac321bad02fc32f457edb5b09e79ef2c36bcf09aebf"

  url "https://github.com/NayanVR/Filex/releases/download/v#{version}/filex-#{version}-macos.tar.gz"
  name "Filex"
  desc "Fast cross-platform file explorer"
  homepage "https://github.com/NayanVR/Filex"

  app "Filex.app"
end
