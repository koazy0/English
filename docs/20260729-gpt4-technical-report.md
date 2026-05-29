# GPT-4 Technical Report — Multimodal Large Language Model

> **论文**: GPT-4 Technical Report (OpenAI, 2023)
> **话题标签**: #GPT4 #多模态 #AI安全
> **难度**: ★★★☆☆
> **字数**: ~450词
> **类型**: 📄 CS论文摘要

---

## 正文

OpenAI's GPT-4 Technical Report describes a large multimodal model that accepts both text and image inputs and generates text outputs. While the report provides extensive benchmark evaluations, it notably omits details about the model's architecture, training data, and computational resources — a decision that has generated significant debate within the research community.

The most striking aspect of GPT-4 is its performance on standardised tests designed for humans. The model passes the bar exam with a score approximating the 90th percentile of human test-takers, achieves near-perfect scores on the SAT mathematics section, and performs competitively on graduate-level assessments including the GRE. These results represent a substantial leap over its predecessor, GPT-3.5, which scored in the lower percentiles on the same examinations. On natural language benchmarks, GPT-4 outperforms existing models across a wide range of tasks, including reading comprehension, question answering, and translation.

The multimodal capability — the ability to process images alongside text — is a significant architectural advance. When presented with an image of a humorous cartoon, for instance, GPT-4 can explain why the cartoon is funny, demonstrating an ability to integrate visual and textual understanding. The model can also interpret charts, transcribe text from images, and answer questions about photographs. However, this capability remains imperfect: the model sometimes fails to identify objects that are partially obscured and can misinterpret spatial relationships in complex scenes.

Safety improvements are a central theme of the report. OpenAI describes an extensive process of safety-driven iteration during development, incorporating reinforcement learning from human feedback to reduce harmful outputs. The company reports that GPT-4 is 82 per cent less likely than GPT-3.5 to produce disallowed content in internal evaluations. External red-teaming — deliberate attempts by independent researchers to provoke harmful outputs — identified additional vulnerabilities that were addressed before public release.

Nevertheless, significant risks remain. Hallucination — the generation of confident but false information — persists across all modalities. The model can fabricate legal citations, invent historical events, and produce plausible-sounding but incorrect scientific explanations. Bias in training data continues to manifest in the model's outputs, potentially perpetuating stereotypes about demographic groups. The report also acknowledges dual-use concerns: GPT-4 can assist with both legitimate research and potentially harmful activities, including the drafting of deceptive content.

The decision to withhold architectural details has proven controversial. Critics argue that transparency is essential for independent safety evaluation and scientific progress. OpenAI counters that disclosure would facilitate misuse and that the competitive landscape discourages full transparency. The tension between openness and safety is not unique to GPT-4 but reflects a broader dilemma facing the field as models become more capable and potentially more dangerous.

---

## 核心词汇

| 英文 | 释义 |
|------|------|
| multimodal | adj. 多模态的 |
| percentile | n. 百分位数 |
| omit | v. 省略，遗漏 |
| predecessor | n. 前任，前身 |
| transcribe | v. 转录，抄写 |
| obscure | v. 遮蔽，使模糊 |
| iteration | n. 迭代，反复 |
| red-teaming | n. 红队测试，对抗性测试 |
| disallowed | adj. 不允许的，违规的 |
| hallucination | n. 幻觉，捏造 |
| fabricate | v. 捏造，编造 |
| dual-use | adj. 两用的，军民两用的 |

## 长难句解析

**1.** While the report provides extensive benchmark evaluations, it notably omits details about the model's architecture, training data, and computational resources — a decision that has generated significant debate within the research community.

- **让步状语从句**: While the report provides extensive benchmark evaluations
- **主句**: it notably omits details about the model's architecture, training data, and computational resources
- **破折号解释**: a decision = the omission
- **定语从句**: that has generated significant debate within the research community（修饰 decision）
- **翻译**: 虽然报告提供了广泛的基准测试评估，但值得注意的是，它省略了关于模型架构、训练数据和计算资源的细节——这一决定在研究界引发了重大争议。

**2.** The tension between openness and safety is not unique to GPT-4 but reflects a broader dilemma facing the field as models become more capable and potentially more dangerous.

- **主句**: The tension between openness and safety is not unique to GPT-4 but reflects a broader dilemma
- **not...but...结构**: not unique to GPT-4 but reflects a broader dilemma（不是GPT-4独有的，而是反映了更广泛的困境）
- **现在分词短语**: facing the field（修饰 dilemma）
- **原因状语从句**: as models become more capable and potentially more dangerous
- **翻译**: 开放性与安全性之间的张力并非GPT-4独有，而是反映了随着模型变得更强大和潜在更危险，该领域面临的更广泛困境。

## 文章大意

本文介绍了OpenAI的GPT-4技术报告。GPT-4是多模态模型，可接受文本和图像输入，在律师考试、SAT、GRE等人类标准化测试中达到顶尖水平，显著超越GPT-3.5。多模态能力可解读图像和图表，但对遮挡物体和复杂空间关系仍有缺陷。安全性方面，通过RLHF和红队测试显著减少了有害输出（违规内容减少82%），但幻觉、偏见和双重用途风险依然存在。报告未披露架构细节引发争议：批评者认为透明度对独立安全评估至关重要，OpenAI则称披露可能助长滥用。开放性与安全性的张力反映了整个AI领域的深层困境。

## 思考题

**1.** What is the most notable omission in the GPT-4 Technical Report?

A. The results of benchmark evaluations.

B. Details about the model's architecture, training data, and computational resources.

C. Information about the model's safety improvements.

D. The model's performance on the bar exam.

<details><summary>答案</summary>B</details>

**2.** According to the report, how does GPT-4 compare to GPT-3.5 in terms of safety?

A. GPT-4 is 82 per cent less likely to produce disallowed content.

B. GPT-4 has identical safety performance to GPT-3.5.

C. GPT-4 produces more hallucinations than GPT-3.5.

D. GPT-4 eliminates all harmful outputs completely.

<details><summary>答案</summary>A</details>

**3.** Why has the decision to withhold architectural details been controversial?

A. Because it makes the model impossible to use.

B. Because transparency is needed for independent safety evaluation, but disclosure could facilitate misuse.

C. Because competing companies already know the architecture.

D. Because the architecture is too simple to be worth hiding.

<details><summary>答案</summary>B</details>
