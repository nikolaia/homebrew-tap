cask "heylisten" do
  version "0.1.4"
  sha256 "772b74f2d9340b4366c378ab2654c1d4d788f7e314bea4ee90a53b8b3ca6fe68"

  url "https://github.com/nikolaia/heylisten/releases/download/v#{version}/heyListen-macos-arm64.zip"
  name "heyListen"
  desc "Local-only meeting transcription and summaries for Norwegian meetings"
  homepage "https://github.com/nikolaia/heylisten"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "heyListen.app"
  binary "#{appdir}/heyListen.app/Contents/MacOS/heylisten"

  # Only with `brew uninstall --zap`: the models, meeting transcripts, kept audio and settings.
  # Notes in your notes folder are never touched.
  zap trash: [
    "~/.config/heylisten",
    "~/Library/Application Support/heylisten",
  ]
end
