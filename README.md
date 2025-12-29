# Homebrew tap (timsearle/tap)

This repository is a personal Homebrew tap used to publish prebuilt binaries via Homebrew.

## Usage (install)

```bash
brew tap timsearle/tap
brew install <formula>

# Upgrade later
brew upgrade <formula>
```

## Repository layout

- `Formula/<name>.rb` — Homebrew formulae.
- `.github/workflows/update-formula.yml` — workflow used by other repositories to update a formula’s `url`, `sha256`, and `version`.

## Publishing a new repository via this tap

### 1) Add a formula

Create `Formula/<formula>.rb` in this repo.

Minimum required fields (the update workflow patches these lines):

```rb
url "..."
sha256 "..."
version "..."
```

### 2) Add a release workflow to your repository

In your repository’s release workflow, call this repo’s `update-formula.yml` workflow (example using the GitHub CLI):

```bash
URL="https://github.com/<owner>/<repo>/releases/download/${TAG}/<asset>.zip"

gh workflow run update-formula.yml \
  -R timsearle/homebrew-tap \
  -f formula=<formula> \
  -f url="${URL}" \
  -f sha256="${SHA256}" \
  -f version="${VERSION}" \
  -f branch=main

RUN_ID=$(gh run list -R timsearle/homebrew-tap --workflow update-formula.yml --limit 1 --json databaseId --jq '.[0].databaseId')
gh run watch -R timsearle/homebrew-tap "${RUN_ID}" --exit-status
```

### 3) Create a token for calling repositories

The calling repository must provide a token (as `GH_TOKEN`) that can dispatch workflows in this repository.

Recommended: a fine-grained PAT scoped to `timsearle/homebrew-tap` with:
- **Actions: Read and write** (to dispatch and read workflow runs)
- **Contents: Read** (to read repo metadata; not strictly required for the dispatch itself)

(You do **not** need to grant direct git push rights from the calling repo if you use this workflow-based approach.)

## Notes

- The update workflow is intentionally generic and only performs a simple `sed` replacement for `url`, `sha256`, and `version`.
- If a formula does not contain those lines in the expected format, the workflow will fail.
