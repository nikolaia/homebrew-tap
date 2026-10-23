cask "heylisten" do
  version "0.1.2"
  sha256 "b0581835e57e1a7165f1ac1e1dccfb1085101d5d96561e0a6f9b6fdb8901e905"

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
