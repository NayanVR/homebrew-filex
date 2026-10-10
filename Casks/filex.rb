cask "filex" do
  version "0.2.2"
  sha256 "6c37e3bdc813523fc7bd75f8a0097be1bdf6ba2cfaaadaed86414c2cc50e4ae8"

  url "https://github.com/NayanVR/Filex/releases/download/v#{version}/filex-#{version}-macos.tar.gz"
  name "Filex"
  desc "Fast cross-platform file explorer"
  homepage "https://github.com/NayanVR/Filex"

  app "Filex.app"
end
