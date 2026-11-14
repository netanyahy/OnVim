#!/usr/bin/env bash
# ==============================================================================
#            ⚡ OnVim - The Modern IDE Fork Auto-Installer ⚡
#                 Repository: https://github.com/netanyahy/onvim
# ==============================================================================

set -e

# Цвета для терминала
BOLD="\033[1m"
GREEN="\033[32m"
CYAN="\033[36m"
YELLOW="\033[33m"
RED="\033[31m"
RESET="\033[0m"

echo -e "${CYAN}${BOLD}"
cat << "EOF"
   ██████╗ ███╗   ██╗██╗   ██╗██╗███╗   ███╗
  ██╔═══██╗████╗  ██║██║   ██║██║████╗ ████║
  ██║   ██║██╔██╗ ██║██║   ██║██║██╔████╔██║
  ██║   ██║██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ╚██████╔╝██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
   ╚═════╝ ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
        ⚡ The Ultimate Modern IDE Fork ⚡
EOF
echo -e "${RESET}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="${HOME}/.local/bin"
CONFIG_DIR="${HOME}/.config/onvim"
SHARE_DIR="${HOME}/.local/share/onvim"
PLUGGED_DIR="${SHARE_DIR}/plugged"

echo -e "${GREEN}[1/6]${RESET} Проверка зависимостей сборки..."
for cmd in gcc make git; do
  if ! command -v "$cmd" &>/dev/null; then
    echo -e "${RED}[Ошибка]${RESET} Утилита $cmd не найдена. Установите её через системный пакетный менеджер."
    exit 1
  fi
done

echo -e "${GREEN}[2/6]${RESET} Конфигурация и компиляция OnVim..."
cd "${SCRIPT_DIR}"

if [ ! -f "src/auto/config.mk" ]; then
  ./configure --with-features=huge --with-vim-name=onvim
fi

cd src
make -j"$(nproc 2>/dev/null || echo 2)" onvim
cd "${SCRIPT_DIR}"

echo -e "${GREEN}[3/6]${RESET} Установка исполняемого файла..."
mkdir -p "${BIN_DIR}"
cat << EOF > "${BIN_DIR}/onvim"
#!/bin/sh
if [ -z "\$VIMRUNTIME" ]; then
  export VIMRUNTIME="${SCRIPT_DIR}/runtime"
fi
exec "${SCRIPT_DIR}/src/onvim" "\$@"
EOF
chmod +x "${BIN_DIR}/onvim"

echo -e "${GREEN}[4/6]${RESET} Настройка конфигурации OnVim (~/.config/onvim/init)..."
mkdir -p "${CONFIG_DIR}/autoload"
mkdir -p "${SHARE_DIR}/undo"
mkdir -p "${PLUGGED_DIR}"

if [ ! -f "${CONFIG_DIR}/init" ]; then
  cp "${SCRIPT_DIR}/runtime/onvim_init.vim" "${CONFIG_DIR}/init"
  echo -e "   -> Создан файл конфигурации: ${CONFIG_DIR}/init"
fi

cp "${SCRIPT_DIR}/runtime/autoload/plug.vim" "${CONFIG_DIR}/autoload/plug.vim"

echo -e "${GREEN}[5/6]${RESET} Установка плагинов (UI, LSP, NerdTree, темы)..."
declare -A PLUGINS=(
  ["catppuccin"]="https://github.com/catppuccin/vim.git"
  ["vim-airline"]="https://github.com/vim-airline/vim-airline.git"
  ["vim-airline-themes"]="https://github.com/vim-airline/vim-airline-themes.git"
  ["vim-buftabline"]="https://github.com/ap/vim-buftabline.git"
  ["nerdtree"]="https://github.com/preservim/nerdtree.git"
  ["vim-devicons"]="https://github.com/ryanoasis/vim-devicons.git"
  ["vim-startify"]="https://github.com/mhinz/vim-startify.git"
  ["auto-pairs"]="https://github.com/jiangmiao/auto-pairs.git"
  ["vim-commentary"]="https://github.com/tpope/vim-commentary.git"
  ["vim-polyglot"]="https://github.com/sheerun/vim-polyglot.git"
  ["vim-lsp"]="https://github.com/prabirshrestha/vim-lsp.git"
  ["vim-lsp-settings"]="https://github.com/mattn/vim-lsp-settings.git"
  ["asyncomplete.vim"]="https://github.com/prabirshrestha/asyncomplete.vim.git"
  ["asyncomplete-lsp.vim"]="https://github.com/prabirshrestha/asyncomplete-lsp.vim.git"
)

for plugin in "${!PLUGINS[@]}"; do
  target="${PLUGGED_DIR}/${plugin}"
  if [ ! -d "${target}" ]; then
    echo -e "   -> Клонирование ${CYAN}${plugin}${RESET}..."
    git clone --depth 1 "${PLUGINS[$plugin]}" "${target}" 2>/dev/null || true
  fi
done

echo -e "${GREEN}[6/6]${RESET} Проверка языковых серверов LSP (Python, JS, TS)..."
if command -v npm &>/dev/null; then
  if ! command -v pyright-langserver &>/dev/null || ! command -v typescript-language-server &>/dev/null; then
    echo -e "   -> Установка pyright и typescript-language-server..."
    npm install -g --prefix "${HOME}/.local" pyright typescript typescript-language-server 2>/dev/null || true
  fi
fi

echo ""
echo -e "${CYAN}${BOLD}================================================================${RESET}"
echo -e "${GREEN}${BOLD}      Установка OnVim успешно завершена! ✨${RESET}"
echo -e "${CYAN}${BOLD}================================================================${RESET}"
echo -e "Путь к бинарнику : ${YELLOW}${BIN_DIR}/onvim${RESET}"
echo -e "Файл настроек    : ${YELLOW}${CONFIG_DIR}/init${RESET}"
echo ""
echo -e "Убедитесь, что ${YELLOW}~/.local/bin${RESET} добавлен в ваш \$PATH:"
echo -e "  export PATH=\"\$HOME/.local/bin:\$PATH\""
echo ""
echo -e "Запустите редактор командой: ${GREEN}${BOLD}onvim${RESET}"
echo ""
