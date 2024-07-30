cask "gpgfrontend" do
  version "2.1.4"

  on_monterey :or_older do
    sha256 "1618530c448faa8b41a1dabb30b6c10edb6132e9ab52a24729b25fe33e457ded"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-12.dmg",
        verified: "github.com/saturneric/GpgFrontend/"

    caveats do
      requires_rosetta
    end
  end
  on_ventura do
    sha256 "f4496007ed067f20503be73fe69d40ae03601c2c3b37c5b8809f82f96d979527"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-13.dmg",
        verified: "github.com/saturneric/GpgFrontend/"

    caveats do
      requires_rosetta
    end
  end
  on_sonoma :or_newer do
    sha256 "a93c8edd12ccd557f3702abf8c12fee877a3574fd594f3501ace68c9db1d4e29"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-14.dmg",
        verified: "github.com/saturneric/GpgFrontend/"
  end

  name "GpgFrontend"
  desc "OpenPGP/GnuPG crypto, sign and key management tool"
  homepage "https://gpgfrontend.bktus.com/"

  depends_on macos: ">= :monterey"
  depends_on formula: "gnupg"

  app "GpgFrontend.app"

  zap trash: [
    "~/Library/Application Scripts/pub.gpgfrontend.gpgfrontend",
    "~/Library/Application Support/GpgFrontend",
    "~/Library/Containers/pub.gpgfrontend.gpgfrontend",
    "~/Library/Preferences/GpgFrontend",
    "~/Library/Preferences/GpgFrontend.plist",
    "~/Library/Preferences/pub.gpgfrontend.gpgfrontend.plist",
    "~/Library/Saved Application State/pub.gpgfrontend.gpgfrontend.savedState",
  ]
end
