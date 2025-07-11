# 我的 Dotfiles

繁體中文 | [English](./README.md)

## 快速開始

```bash
# 安裝 zsh
sudo apt install zsh    # Ubuntu/Debian
brew install zsh        # macOS

# Clone 並安裝
git clone <your-repo-url>
cd dotfile/zsh
./install.sh

# 重開終端機
```

## 功能

### 目錄導航
- `z <部分名稱>` - 跳到去過的任何目錄
- `ls` - 彩色列表加圖示
- `tree` - 樹狀顯示

### Git 快捷鍵
- `gst` - git status
- `gaa` - git add all
- `gco` - git checkout
- `gp` - git push
- `ga` - 互動式 git add
- `glo` - 互動式 git log

### 生產力
- `Ctrl+R` - 模糊搜尋指令歷史
- `**<Tab>` - 模糊檔案補全
- 打字時自動建議
- 即時語法高亮

## 手動安裝

```bash
# 複製設定檔
cp zshrc ~/.zshrc
cp zshenv ~/.zshenv
cp p10k.zsh ~/.p10k.zsh

# 建立目錄
mkdir -p ~/.config/zsh ~/.local/bin

# 複製其他檔案
cp -r config/* ~/.config/zsh/
cp local-bin/env ~/.local/bin/

# 安裝 zinit
bash -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

## 備份與還原

安裝腳本會自動備份你現有的 `.zshrc` 到 `.zshrc.backup`。

要還原原本的設定：
```bash
mv ~/.zshrc.backup ~/.zshrc
```

## 選用工具

- `exa` - 更好的 ls
- `bat` - 更好的 cat
- `lazygit` - 終端 git UI

```bash
# Ubuntu/Debian
sudo apt install exa bat

# macOS
brew install exa bat lazygit
```