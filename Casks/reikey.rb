cask 'reikey' do
  version '1.0.0'
  sha256 '6f01ef7c873a5c6df15ad29108002c4dbc818739f98b04303f436f99dd2dd556'

  url "https://bitbucket.org/objective-see/deploy/downloads/ReiKey_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/ReiKey.txt'
  name 'ReiKey'
  homepage 'https://objective-see.com/products/reikey.html'

  installer script: {
                      executable: "#{staged_path}/ReiKey Installer.app/Contents/MacOS/ReiKey Installer",
                      args:       ['-install'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "#{staged_path}/ReiKey Installer.app/Contents/MacOS/ReiKey Installer",
                      args:       ['-uninstall'],
                      sudo:       true,
                    }
end
