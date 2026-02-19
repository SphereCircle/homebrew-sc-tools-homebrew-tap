echo "Step 1: Uninstall Formula"
brew uninstall github-sync

echo "Step 2: Uninstall Tap"
brew untap SphereCircle/sc-tools-homebrew-tap

echo "Step 3: Install Tap"
brew tap SphereCircle/sc-tools-homebrew-tap

echo "Step 4: Install Formula"
brew install github-sync

echo "Step 5: Get Info For Tap"
brew tap-info SphereCircle/sc-tools-homebrew-tap

echo "Step 6: Get Info For Formula"
brew info SphereCircle/sc-tools-homebrew-tap/github-sync