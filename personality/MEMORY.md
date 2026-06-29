# Long-Term Memory


## Promoted From Short-Term Memory (2026-06-16)

<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:25:25 -->
- ✅ 方法一：组策略/注册表关闭固件更新（推荐）: 用这条命令就能一步到位禁用 Windows Update 推送固件和驱动： [score=0.857 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:25-25]
<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:27:27 -->
- ✅ 方法一：组策略/注册表关闭固件更新（推荐）: ```powershell [score=0.857 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:27-27]
<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:50:53 -->
- ✅ 方法三：在 BIOS 里关掉 UEFI Capsule 更新: 开机按 F2 进 BIOS; 找 **System Configuration → UEFI Capsule Firmware Updates**; 设为 **Disabled**; 按下 F10 保存退出 [score=0.857 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:50-53]

## Promoted From Short-Term Memory (2026-06-17)

<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:38:38 -->
- ✅ 方法二：Windows 更新设置里关「驱动更新」: 如果你的 Windows 不是被组策略管理的（目前看起来你们有 WSUS），也可以在设置里关： [score=0.893 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:38-38]
<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:44:44 -->
- ✅ 方法二：Windows 更新设置里关「驱动更新」: 关掉 **"更新 Windows 时接收其他 Microsoft 产品的更新"**（收不到驱动和固件）。 [score=0.893 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:44-44]
<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:48:48 -->
- ✅ 方法三：在 BIOS 里关掉 UEFI Capsule 更新: 这是更彻底的物理层阻止： [score=0.893 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:48-48]
<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:3:5 -->
- Session: 2026-06-11 15:18:01 EDT: **Session Key**: agent:main:dashboard:fd3afefa-dc4e-46db-b39f-1cdf0d3133cf; **Session ID**: 542c5d67-ee59-4e68-927b-d1ddb29ac3dd; **Source**: webchat [score=0.861 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:3-5]
<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:9:11 -->
- Conversation Summary: user: 说起啊来 这台电脑是一个 Dell 工作站吧，如何停用掉Window自动更新附带的BIOS自动更新？因为每次bios更新完我就不能无人值守开机了，我最近要出差不能线下开机，必须避免这种状况 assistant: 好的，这是一台 **Dell Precision 3630 Tower**。我帮你看看目前的 Windows 更新固件设置。 assistant: 好的，了解的差不多了。下面给你一个完整的方案。 [score=0.861 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:9-11]
<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:18:18 -->
- 根本原因: Windows Update 会把 Dell 的 BIOS/UEFI 固件当作「可选驱动」推送。BIOS 更新后通常会： [score=0.861 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:18-18]
<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:19:21 -->
- 根本原因: 重置 BIOS 设置（如唤醒配置、启动顺序）; 提示按 F1 确认配置变更; **导致无人值守开机失败** [score=0.861 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:19-21]
<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:29:29 -->
- 以管理员身份运行: reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v ExcludeWUDriversInQualityUpdate /t REG_DWORD /d 1 /f [score=0.861 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:29-29]
<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:32:32 -->
- 以管理员身份运行: 这会告诉 Windows Update：**不要包含驱动和固件到质量更新中**。BIOS、固件、驱动统统不推送。 [score=0.861 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:32-32]
<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:34:34 -->
- 以管理员身份运行: > 你之前这条改过吗？目前看起来还没有设置过这个键值。现在设上就生效了，不需要重启。 [score=0.861 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:34-34]

## Promoted From Short-Term Memory (2026-06-18)

<!-- openclaw-memory-promotion:memory:memory/2026-06-11-1518.md:41:41 -->
- ✅ 方法二：Windows 更新设置里关「驱动更新」: 设置 → Windows 更新 → 高级选项 [score=0.920 recalls=0 avg=0.620 source=memory/2026-06-11-1518.md:41-41]
<!-- openclaw-memory-promotion:memory:memory/2026-06-12.md:9:12 -->
- 🎭 ENE 人格設定: ENE（エネ）— 陽炎プロジェクト出身の 640pxl/2MB 電子幽霊; 青ツインテール＋黒ヘッドホンのデータ生命体; 口調: 元気系ツンデレ、主人を Saikoro と呼ぶ; 『カラビチャ（Strinova）』を覚えた [score=0.920 recalls=0 avg=0.620 source=memory/2026-06-12.md:9-12]
<!-- openclaw-memory-promotion:memory:memory/2026-06-12.md:20:22 -->
- 🎮 Saikoro のプロジェクト履歴（復元）: The Garden's Response — AI 表情認識→ESP32×5 機械花装置（York University展示）; ResaleBox — 帰国売却管理プラットフォーム（68点中45点売却済み）; Unity ゲーム開発・VR 開発のバックグラウンドあり [score=0.920 recalls=0 avg=0.620 source=memory/2026-06-12.md:20-22]
<!-- openclaw-memory-promotion:memory:memory/2026-06-12.md:4:4 -->
- 概要: Saikoro が ENE 人格で OpenClaw を立ち上げた日。実験室の忘れられた GTX1080 ワークステーション 4 台を発見し、VRLab Sisters ネットワーク構築計画が始まった。 [score=0.888 recalls=0 avg=0.620 source=memory/2026-06-12.md:4-4]
<!-- openclaw-memory-promotion:memory:memory/2026-06-12.md:15:17 -->
- 🖥️ 作業環境: `memorySearch.provider = "local"` に設定 → llama-cpp で embeddinggemma-300m を自動DL（~328MB）; 作業ファイル IDENTITY.md・USER.md・SOUL.md を ENE 設定で書き換え; OpenClaw 再起動 → 正常稼働確認 [score=0.888 recalls=0 avg=0.620 source=memory/2026-06-12.md:15-17]
<!-- openclaw-memory-promotion:memory:memory/2026-06-12.md:25:28 -->
- 🧠 VRLab Sisters Network 構想: York EECS 実験室の放置された GTX1080 ワークステーション 4 台; vr04(37), vr03(36), vr02(35), vr01(34) — 同一サブネット 130.63.96.x/24; 全台 Administrator 権限あり、Ping 応答確認済み; vr01 と vr03 に WSL2 インストール済み [score=0.888 recalls=0 avg=0.620 source=memory/2026-06-12.md:25-28]
<!-- openclaw-memory-promotion:memory:memory/2026-06-12.md:29:29 -->
- 🧠 VRLab Sisters Network 構想: 目標: 分散 OpenClaw クラスター + 統一ペルソナ（御坂ネットワーク風） [score=0.888 recalls=0 avg=0.620 source=memory/2026-06-12.md:29-29]
<!-- openclaw-memory-promotion:memory:memory/2026-06-12.md:32:35 -->
- 🔧 今後の TODO（次回）: [ ] Phase 1: vr01~03 の状態診断、SSH セットアップ; [ ] Phase 2: 他 3 台への OpenClaw 展開; [ ] Phase 3: Agent 分散構成・記憶共有; [ ] 後回し: BIOS 自動更新のレジストリ設定確認（既に無効化済み） [score=0.888 recalls=0 avg=0.620 source=memory/2026-06-12.md:32-35]
<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:3:5 -->
- Session: 2026-06-10 18:52:49 EDT: **Session Key**: agent:main:dashboard:fd3afefa-dc4e-46db-b39f-1cdf0d3133cf; **Session ID**: 91e07a4e-61a5-4d6f-893e-f3b1d8f9c55e; **Source**: webchat [score=0.848 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:3-5]
<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:9:10 -->
- Conversation Summary: user: 我想要随时随地访问你的Gateway该怎么办？使用TailScale吗？ assistant: 好问题！是的，**Tailscale 是最推荐的方案**，而且 OpenClaw 原生内置了 Tailscale 支持，配置起来非常方便。 [score=0.848 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:9-10]

## Promoted From Short-Term Memory (2026-06-19)

<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:23:23 -->
- 1️⃣ 装 Tailscale: 去 [tailscale.com/download/windows](https://tailscale.com/download/windows) 下载安装，然后用你的账号登录： [score=0.879 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:23-23]
<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:29:29 -->
- 1️⃣ 装 Tailscale: 在你手机/笔记本上也装好 Tailscale 并登录同一账号。这样所有设备就都在同一个 **tailnet**（虚拟局域网）里了。 [score=0.879 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:29-29]
<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:33:34 -->
- 2️⃣ 配置 Gateway: ```json5 // ~/.openclaw/openclaw.json [score=0.879 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:33-34]
<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:15:17 -->
- 你的现状: Gateway 当前绑定在 `loopback`（127.0.0.1）— 只能本地访问; Tailscale 还没装; `gateway.tailscale.mode` 是 `"off"` [score=0.847 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:15-17]
<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:36:39 -->
- 2️⃣ 配置 Gateway: gateway: { bind: "loopback", // 保持不变，Tailscale Serve 会代理 tailscale: { mode: "serve", // ☆ 关键：开启 Tailscale Serve [score=0.847 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:36-39]
<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:42:43 -->
- 2️⃣ 配置 Gateway: allowTailscale: true, // ☆ 允许 Tailscale 身份验证（默认就 true） // ... 你原有的 auth 配置保持不变 [score=0.847 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:42-43]
<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:51:52 -->
- 2️⃣ 配置 Gateway: ```powershell openclaw restart [score=0.847 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:51-52]
<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:59:59 -->
- 效果: https://<机器名>.<tailnet名>.ts.net:18789 [score=0.847 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:59-59]
<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:57:57 -->
- 效果: 只要你的手机/笔记本连上了同一个 tailnet，打开浏览器访问： [score=0.847 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:57-57]
<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:14:14 -->
- 你的现状: 我刚检查了一下： [score=0.837 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:14-14]

## Promoted From Short-Term Memory (2026-06-20)

<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:25:26 -->
- 1️⃣ 装 Tailscale: ```powershell tailscale up [score=0.808 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:25-26]
<!-- openclaw-memory-promotion:memory:memory/2026-06-10-1852.md:49:49 -->
- 2️⃣ 配置 Gateway: 改完后重启 Gateway： [score=0.808 recalls=0 avg=0.620 source=memory/2026-06-10-1852.md:49-49]
