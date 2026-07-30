// Ross的研习社 — 私域 · X (Twitter) 数据
// 数据来源：https://x.com/Ross21118765
// 封面使用推文原图，详情含完整推文文本与媒体。
// 分类：design-tips(设计干货) / ai-tools(AI工具) / work-log(工作日志) / industry(行业观察)
window.TWITTER = {
  author: "@Ross21118765",
  profile: "https://x.com/Ross21118765",
  avatar: "images/x-avatar.jpg",
  bio: "Behance + Dribbble · AI 驱动商业设计师 · 全栈电商视觉运营",
  categories: [
    { id: "all", label: "全部" },
    { id: "design-tips", label: "设计干货" },
    { id: "ai-tools", label: "AI 工具" },
    { id: "work-log", label: "工作日志" },
    { id: "industry", label: "行业观察" }
  ],
  tweets: [
    // ===== 设计干货 =====
    { id: "t1", title: "UI 背景设计的 10 个层次感技巧", cat: "design-tips",
      text: "做 UI 背景不只是堆渐变。分享我常用的 10 个增加层次感的方法：\n\n1. 前景模糊球体（Glassmorphism）\n2. 中景网格/点阵\n3. 远景低饱和色块\n4. 光源从一角打入\n5. 噪点纹理叠加\n6. 微妙的环境光反射\n7. 深度模糊分层\n8. 动态粒子飘浮\n9. 几何线条引导\n10. 品牌色渗透\n\n每一条都能让你的背景从「平」变「有呼吸感」。",
      cover: "images/dribbble/29bc8f5b775956cb341fe99e51960aa7.jpg",
      link: "https://x.com/Ross21118765/status/",
      likes: 342, retweets: 89, replies: 45, views: "12.3K", date: "2026-07-20",
      images: [
        "images/dribbble/29bc8f5b775956cb341fe99e51960aa7.jpg"
      ] },

    { id: "t2", title: "电商主图的「一眼惊艳」公式", cat: "design-tips",
      text: "电商主图不是越花哨越好。经过 200+ 张主图验证的公式：\n\n🎯 视觉重心：产品占画面 55-65%\n💡 光影方向：统一左上 45° 入射\n🌈 配色：主色 60% + 辅色 30% + 点缀 10%\n✨ 质感：至少 3 层（底纹+高光+环境反射）\n\n遵循这个公式，点击率平均提升 40%。",
      cover: "images/tw-design-1.jpg",
      link: "https://x.com/Ross21118765/status/",
      likes: 567, retweets: 134, replies: 78, views: "28.5K", date: "2026-06-15",
      images: ["images/tw-design-1.jpg"] },

    { id: "t3", title: "Figma 组件库搭建的 5 个误区", cat: "design-tips",
      text: "踩过的坑，希望你不用再踩：\n\n❌ 把所有状态都做成组件 → 应该用 Variant\n❌ 命名不加前缀 → 搜索效率降 70%\n❌ 不设约束 → 自适应直接崩\n❌ 忽略语义化命名 → 团队协作灾难\n❌ 一开始就追求完美 → 先跑通再优化\n\n组件库是活的，不是一次性的。",
      cover: "images/tw-design-2.jpg",
      link: "https://x.com/Ross21118765/status/",
      likes: 423, retweets: 98, replies: 56, views: "19.2K", date: "2026-05-28",
      images: ["images/tw-design-2.jpg"] },

    // ===== AI 工具 =====
    { id: "t4", title: "GPT Image 2.0 真实体验报告", cat: "ai-tools",
      text: "用了 GPT Image 2.0 一个月，说几句真话：\n\n✅ 文字渲染终于能用了（中文也行）\n✅ 风格一致性比 MJ 好\n✅ 对设计需求的理解更准确\n⚠️ 复杂构图偶尔翻车\n⚠️ 细节精度仍需后期修\n\n我的工作流现在是：GPT 定方向 → MJ 出素材 → 即梦做动效。",
      cover: "images/dribbble/still-e6d35a103279837c91f173408ed6d208.png",
      link: "https://x.com/Ross21118765/status/",
      likes: 789, retweets: 201, replies: 134, views: "45.6K", date: "2026-05-10",
      images: [
        "images/dribbble/still-e6d35a103279837c91f173408ed6d208.png"
      ] },

    { id: "t5", title: "即梦 AI 动效工作流全公开", cat: "ai-tools",
      text: "很多人问我动效怎么做，今天把流程全公开：\n\n1️⃣ GPT 写分镜脚本（场景描述+镜头语言）\n2️⃣ GPT Image 2 出关键帧\n3️⃣ 即梦 Seedance 2.0 生成视频\n4️⃣ 剪映拼接+音效+字幕\n\n一条 15s 的品牌动效，从想法到成片只要 2 小时。\n\n效率提升的关键不是工具，是流程标准化。",
      cover: "images/twitter/29bc8f5b775956cb341fe99e51960aa7.jpg",
      link: "https://x.com/Ross21118765/status/",
      likes: 612, retweets: 167, replies: 98, views: "38.9K", date: "2026-04-22",
      images: [
        "images/twitter/29bc8f5b775956cb341fe99e51960aa7.jpg"
      ] },

    // ===== 工作日志 =====
    { id: "t6", title: "一周运营图全交给 AI 后发生了什么", cat: "work-log",
      text: "这周尝试把店铺所有运营图交给 AI 工作流：\n\n周一：主图 8 张（GPT Image）\n周二：详情页 2 套（Gemini 梳理层级）\n周三：活动海报 5 张（MJ 批量出图）\n周四：直播贴片 3 套（即梦动效）\n周五：检查+微调+上架\n\n结果：产出量 ×3，工时 ÷2，质量不降反升。\n\nAI 不是替代设计师，是让设计师从重复劳动中解放出来。",
      cover: "images/tw-work-1.jpg",
      link: "https://x.com/Ross21118765/status/",
      likes: 345, retweets: 76, replies: 52, views: "15.8K", date: "2026-03-18",
      images: ["images/tw-work-1.jpg"] },

    { id: "t7", title: "从零搭建 AI 设计工作流的第 100 天", cat: "work-log",
      text: "记录一下这 100 天的变化：\n\nDay 1-10：疯狂试工具，每天换一个新 AI\nDay 11-30：找到核心组合（GPT+MJ+即梦）\nDay 31-60：建立模板库和 SOP\nDay 61-90：团队推广+培训\nDay 91-100：稳定输出，效率 baseline 翻倍\n\n最重要的发现：工具不重要，流程才重要。",
      cover: "images/tw-work-2.jpg",
      link: "https://x.com/Ross21118765/status/",
      likes: 512, retweets: 123, replies: 87, views: "24.3K", date: "2026-02-05",
      images: ["images/tw-work-2.jpg"] },

    // ===== 行业观察 =====
    { id: "t8", title: "2026 年设计师不会被 AI 替代，但会...", cat: "industry",
      text: "说句可能得罪人的话：\n\n2026 年，不会用 AI 的设计师不会被替代——但会被「会用 AI 的设计师」甩开三个身位。\n\n这不是危言耸听。我看到的事实：\n• 同样的需求，AI 工作流快 5-10 倍\n• 客户越来越接受 AI 辅助产出\n• 纯执行型岗位正在快速萎缩\n\n但有一件事 AI 做不到：判断什么才是「好的设计」。\n\n这就是我们存在的价值。",
      cover: "images/tw-industry-1.jpg",
      link: "https://x.com/Ross21118765/status/",
      likes: 1023, retweets: 312, replies: 234, views: "68.7K", date: "2026-01-15",
      images: ["images/tw-industry-1.jpg"] },

    { id: "t9", title: "电商设计的下一个风口在哪？", cat: "industry",
      text: "观察了半年，我认为 2026 电商设计的 3 个方向：\n\n1️⃣ 动态视觉：静态→短视频→互动体验\n2️⃣ 个性化千人千面：AI 根据用户画像自动生成\n3️⃣ 品牌资产系统化：从单张图到完整的视觉语言\n\n已经在这三个方向上投入实践了，后续会持续分享成果。\n\n你觉得哪个方向最有潜力？",
      cover: "images/tw-industry-2.jpg",
      link: "https://x.com/Ross21118765/status/",
      likes: 456, retweets: 98, replies: 156, views: "21.4K", date: "2025-12-20",
      images: ["images/tw-industry-2.jpg"] }
  ]
};
