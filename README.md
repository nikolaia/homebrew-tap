# nikolaia's Homebrew tap

[heyListen](https://github.com/nikolaia/heylisten): local-only meeting transcription and summaries for Norwegian meetings, on Apple Silicon Macs.

```bash
brew install --cask nikolaia/tap/heylisten
brew upgrade --cask heylisten        # later updates
```

This installs `heyListen.app` in Applications and the `heylisten` command.

**After installing or upgrading, open heyListen from Applications once** and click *Open Anyway* under System Settings → Privacy & Security. heyListen isn't notarized by Apple yet, so until you do, macOS blocks the app and the `heylisten` command too (it quits without a word).

The cask follows heyListen's releases on its own: [a workflow](.github/workflows/update.yml) checks every hour and only moves to a release whose zip matches its published checksum and was built by heyListen's own release workflow (verified with `gh attestation verify`).

`brew uninstall --zap heylisten` also removes heyListen's models, meeting transcripts, kept audio and settings. Your notes are never touched.

Bug reports and ideas go to [the heyListen repo](https://github.com/nikolaia/heylisten/issues).
