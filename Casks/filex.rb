cask "filex" do
  version "0.1.0"
  sha256 "3a5ee168296ba4614e45df4a581fbeb665a848068597495b6bb4d7b08400506e"

  url "https://github.com/NayanVR/Filex/releases/download/v#{version}/filex-#{version}-macos.tar.gz"
  name "Filex"
  desc "Fast cross-platform file explorer"
  homepage "https://github.com/NayanVR/Filex"

  app "Filex.app"
end
