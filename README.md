# Dao Skill

> **为学日益，为道日损。损之又损，以至于无为。** —— 《道德经》第48章

**Dao Skill** 以中国《道德经》哲学思想为根基，将每一个哲学概念通过真实的开发实践验证、提炼，最终固化为可复用的 Claude Code Skill。

每个 Skill 不是凭空设计，而是从项目实战中踩坑、反思、抽象后沉淀下来的方法论——**道从实践中来，再回到实践中去。**

---

## 哲学根基：道法术器

道德经讲「道生一，一生二，二生三，三生万物」。我们将这一思想映射到 Skill 开发的四层架构：

| 层次 | 概念 | 含义 |
|------|------|------|
| **道 (Tao)** | 哲学本源 | 《道德经》的核心理念——如「为道日损」「上善若水」「大道至简」 |
| **法 (Method)** | 方法论 | 将哲学概念转化为可操作的方法——每个 SKILL.md 定义一套完整的实践流程 |
| **术 (Technique)** | 技术手段 | 模板、脚本、验证规则——让方法论可以被执行 |
| **器 (Tool)** | 产物 | Raw 数据、Core-Wisdom 规则、自动化注入——实实在在的交付物 |

**一句话：道是为什么，法是怎么做，术是用什么做，器是做出来什么。**

---

## 已有 Skill

| Skill | 目录 | 道德经 | 哲学内涵 | 实践功能 |
|-------|------|--------|---------|---------|
| `dao-sun` | [sun](./skills/sun/) | 第48章·日损 | **为道日损，去繁就简** | 经验蒸馏——将开发中的错误和偏好自动采集、提炼为规则，AI 自动遵循 |

### dao-sun（日损·经验蒸馏）

「为学日益，为道日损」——求学是每天增加知识，修道是每天减少妄为。

对应到开发实践：每天踩坑积累经验（益），然后提炼出最精简的规则（损），损到极致便是「无为」——规则自动注入 AI 上下文，无需手动加载。

**实操**：对 AI 说「记住这个解法」，AI 自动采集错误特征和解决方案；定期执行 `/evolve`，同类经验自动聚类提炼为 If-Then 规则，写入 `~/.claude/rules/core-wisdom.md`，每次会话自动生效。

---

## 项目结构

```
dao-skill/                          ← 道的容器——所有 Skill 的集合仓库
│
├── CLAUDE.md                       ← 仓库级开发规范（版本规则、Git 工作流）
├── README.md                       ← 本文件
├── LICENSE                         ← MIT
├── CHANGELOG.md                    ← 版本记录
├── install.sh                      ← 一键安装脚本（支持全部 / 安装单个）
├── .gitignore
│
├── .claude-plugin/
│   └── marketplace.json            ← 插件市场注册——让 /plugin install 可用
│
└── skills/                         ← 每个 Skill 独立目录，互不干扰
    └── sun/                        ← 日损·经验蒸馏
        ├── SKILL.md                ← Skill 定义（name: dao-sun）
        └── .claude-plugin/
            └── plugin.json         ← 插件元数据（name: dao-sun）
```

**设计原则：**
- 每个 Skill 独立文件夹管理，命名取自《道德经》哲学概念
- Skill 之间互不影响，可单独安装、单独使用
- 新增 Skill 只需在 `skills/` 下创建目录，在 `marketplace.json` 中注册

---

## 安装

### 方式一：Claude Code 内（推荐）

直接在对话中说：

```
帮我安装 sun skill
```

或手动执行：

```
/plugin marketplace add tsfjx/dao-skill
/plugin install dao-sun@dao-skill
```

### 方式二：终端一行命令

```bash
# 安装全部 Skill
curl -fsSL https://raw.githubusercontent.com/tsfjx/dao-skill/main/install.sh | bash

# 只安装 sun
curl -fsSL https://raw.githubusercontent.com/tsfjx/dao-skill/main/install.sh | bash -s sun
```

---

## 贡献

遵循「道从实践中来」的原则——每个新 Skill 必须有真实项目经验支撑，从踩坑到抽象再到固化，形成闭环。

---

## 许可

MIT © 2026 tsfjx
