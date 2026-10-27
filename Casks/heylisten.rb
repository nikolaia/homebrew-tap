cask "heylisten" do
  version "0.1.3"
  sha256 "929ffccf73476d5ac116b0a0b73af10717b69da1d44536bb69c9b59916bd7656"

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
