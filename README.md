# Dao Skill

> **为学日益，为道日损。损之又损，以至于无为。** —— 《道德经》第48章

以中国道德经哲学思想指导 Claude Code Skill 开发与管理的道场。

## 理念

| 层次 | 概念 | 对应 |
|------|------|------|
| **道 (Tao)** | 哲学本源 | 以道德经智慧指导 skill 设计 |
| **法 (Method)** | 方法论 | 每个 skill 的 SKILL.md 定义 |
| **术 (Technique)** | 技术手段 | 模板、脚本、规则生成 |
| **器 (Tool)** | 产物 | Raw 数据、Core-Wisdom 规则文件 |

## Skills

| Skill | 道德经概念 | 功能 |
|-------|-----------|------|
| [sun](./skills/sun/) | 日损 — 为道日损，去繁就简 | 经验蒸馏：采集 → 提炼 → 自动注入规则 |

## 安装

```bash
# 一行安装全部 skill
curl -fsSL https://raw.githubusercontent.com/tsfjx/dao-skill/main/install.sh | bash

# 只安装 sun（日损·经验蒸馏）
curl -fsSL https://raw.githubusercontent.com/tsfjx/dao-skill/main/install.sh | bash -s sun
```

## 结构

```
dao-skill/
├── README.md
├── CLAUDE.md
├── LICENSE
├── CHANGELOG.md
├── .gitignore
└── skills/
    └── sun/                   # 日损·经验蒸馏
        ├── SKILL.md
        └── .claude-plugin/
            └── plugin.json
```

## 许可

MIT
