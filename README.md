# chezmoi

[chezmoi](https://www.chezmoi.io/) を使って管理する個人のドットファイル設定。

## セットアップ

### 必要なツール

- [chezmoi](https://www.chezmoi.io/install/)

### 初回セットアップ

```bash
chezmoi init <your-github-username>
chezmoi apply
```

## 日常的な使い方

### 設定ファイルの編集

```bash
# chezmoi 経由で編集（推奨）
chezmoi edit ~/.zshrc
chezmoi edit ~/.config/nvim/init.lua

# 変更内容を確認してから適用
chezmoi diff
chezmoi apply
```

> 直接 `~/.zshrc` などを編集した場合は `chezmoi re-add` でソースに反映できます。

### 変更をリポジトリへ反映

```bash
chezmoi cd
git add -p
git commit -m "update: ..."
git push
```

### 別マシンへの同期

```bash
chezmoi update  # git pull + apply を一括実行
```

## 注意事項

- chezmoi のソースディレクトリは `~/.local/share/chezmoi/` です
- `chezmoi apply` は冪等です。何度実行しても安全です
- 機密情報（APIキーなど）は `.gitignore` または chezmoi の暗号化機能を使って管理してください
