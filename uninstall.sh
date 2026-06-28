#!/bin/bash
set -euo pipefail

SKILLS_DIR="${HOME}/.claude/skills"
REPO_DIR="${SKILLS_DIR}/dao-skill"
TARGETS=()

usage() {
  echo "用法: uninstall.sh [skill名...]"
  echo "  skill名  sun, water, ...    只卸载指定 skill（用源目录名）"
  echo "  无参数                       卸载全部 skill 和仓库"
  exit 0
}

for arg in "$@"; do
  case "$arg" in
    -h|--help) usage ;;
    *) TARGETS+=("$arg") ;;
  esac
done

echo "☯  道·Skill 卸载器"

if [ "${#TARGETS[@]}" -eq 0 ]; then
  echo "  → 卸载全部"

  shopt -s nullglob
  for d in "${SKILLS_DIR}/dao-"*/; do
    name="$(basename "$d")"
    echo "  ↻ 移除 ${name}..."
    rm -rf "$d"
    echo "  ✓ ${name} 已卸载"
  done
  shopt -u nullglob

  if [ -d "${REPO_DIR}" ]; then
    echo "  ↻ 移除 dao-skill 仓库..."
    rm -rf "${REPO_DIR}"
    echo "  ✓ 仓库已移除"
  fi
else
  for skill in "${TARGETS[@]}"; do
    install_name="dao-${skill}"
    DST="${SKILLS_DIR}/${install_name}"

    if [ -d "${DST}" ]; then
      echo "  ↻ 移除 ${install_name}..."
      rm -rf "${DST}"
      echo "  ✓ ${install_name} 已卸载"
    else
      echo "  ✗ ${install_name} 未安装，跳过"
    fi
  done
fi

echo "☯  完成"
echo "  ℹ 运行时数据保留：~/.claude/rules/core-wisdom.md  ~/.knowledge/"
echo "  ℹ 如需清理规则：rm ~/.claude/rules/core-wisdom.md"
echo "  ℹ 如需清理经验：rm -rf ~/.knowledge/"
