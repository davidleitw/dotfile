#!/bin/bash

echo "🚀 開始安裝 zsh 配置..."

# 檢查是否已安裝 zsh
if ! command -v zsh &> /dev/null; then
    echo "❌ 請先安裝 zsh"
    exit 1
fi

# 備份現有配置
if [ -f ~/.zshrc ]; then
    echo "📦 備份現有 .zshrc 到 .zshrc.backup"
    cp ~/.zshrc ~/.zshrc.backup
fi

# 複製配置檔案
echo "📋 複製配置檔案..."
cp zshrc ~/.zshrc
cp zshenv ~/.zshenv
cp p10k.zsh ~/.p10k.zsh

# 建立必要目錄
mkdir -p ~/.config/zsh
mkdir -p ~/.local/bin

# 複製配置目錄
echo "📁 複製配置目錄..."
cp -r config/* ~/.config/zsh/
cp local-bin/env ~/.local/bin/

# 安裝 zinit (如果尚未安裝)
if [ ! -d ~/.config/zinit ]; then
    echo "📥 安裝 zinit..."
    bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
fi

echo "✅ 安裝完成！"
echo ""
echo "📌 後續步驟："
echo "1. 執行 'source ~/.zshrc' 或重新開啟終端"
echo "2. 第一次載入時，zinit 會自動下載所有插件"
echo "3. 如果使用 Powerlevel10k，可能需要安裝 Nerd Fonts"