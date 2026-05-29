# AI Gets Smarter as You Use It

> **话题标签**: #AI #持续学习 #科技创业
> **来源**: Adapted from Wired (May 2026)
> **难度**: ★★★★☆
> **字数**: ~450词
> **类型**: 📰 同源外刊精选

---

## 正文

The most powerful artificial intelligence models in existence share a fundamental limitation: they stop learning the moment training ends. Once deployed, a large language model's knowledge is frozen, a snapshot of whatever data it consumed during development. Every query it processes, every mistake it makes, every gap in its understanding — all of it vanishes without consequence. A startup called Trajectory intends to change this.

Founded by researchers who previously worked at Google, Apple, and OpenAI, Trajectory has built a system that continuously improves AI models after deployment. The approach is deceptively simple in concept but technically demanding in execution. Whenever the model falls short — producing an inaccurate answer, failing to follow a complex instruction, or hallucinating fabricated information — the system logs that instance. These failure cases are then aggregated, annotated by domain experts, and used to post-train the model on a weekly cycle.

The company claims the results are striking. In narrow domains such as medical diagnostics, legal contract analysis, and financial compliance, Trajectory's continuously updated models outperform the latest offerings from frontier laboratories. The explanation is straightforward: general-purpose models, however large, cannot match the precision of a model that learns from its own mistakes in a specific field. A frontier model may have been trained on billions of documents, but it has never encountered the particular regulatory update that a legal professional asked about last Tuesday. Trajectory's model has.

Not everyone is convinced. Critics worry about the stability of models that change weekly. A legal firm that relies on an AI's interpretation of a statute needs consistency, not a system that might shift its reasoning between Monday and Friday. There are also concerns about contamination: if the model learns from user interactions, proprietary information entered by one client could theoretically influence outputs delivered to another. Trajectory insists it maintains strict data isolation between clients, but the architecture makes absolute guarantees difficult.

The deeper question is whether this approach represents a genuine paradigm shift or merely an incremental improvement. Continuous learning has been a goal of AI research for decades, and the technical obstacles — catastrophic forgetting, distributional shift, reward hacking — remain formidable. Trajectory's method sidesteps some of these issues by relying on human annotation rather than automated feedback loops, but this reliance also limits scalability. Hiring enough domain experts to annotate every failure case across every industry is expensive and inherently bottlenecked.

Still, the commercial logic is compelling. In a market saturated with generalist models, the promise of a specialist that improves with use addresses a genuine pain point. Whether Trajectory can maintain quality at scale remains to be seen, but the premise itself — that AI should learn from experience — is difficult to argue against.

---

## 核心词汇

| 英文 | 中文 | 搭配/例句 |
|------|------|---------|
| snapshot | n. 快照，截取 | a snapshot of data / frozen snapshot |
| deceptively | adv. 迷人地，有欺骗性地 | deceptively simple / deceptively calm |
| aggregate | v. 聚集，汇总 | aggregate failure cases / aggregate data |
| annotate | v. 注释，标注 | annotated by experts / annotate datasets |
| hallucinate | v. 产生幻觉，捏造 | hallucinate information / hallucinated facts |
| outperform | v. 胜过，优于 | outperform frontier models / outperform humans |
| consistency | n. 一致性，连贯性 | need consistency / logical consistency |
| contamination | n. 污染，混淆 | data contamination / cross-contamination |
| proprietary | adj. 专有的，私有的 | proprietary information / proprietary software |
| formidable | adj. 可怕的，难以克服的 | formidable obstacles / formidable challenge |
| sidestep | v. 回避，绕开 | sidestep issues / sidestep the question |
| bottlenecked | adj. 受瓶颈制约的 | inherently bottlenecked / bottlenecked process |

---

## 长难句解析

**1.** A frontier model may have been trained on billions of documents, but it has never encountered the particular regulatory update that a legal professional asked about last Tuesday.

- **并列句**: A frontier model may have been trained on billions of documents, but it has never encountered the particular regulatory update
- **定语从句**: that a legal professional asked about last Tuesday（修饰 regulatory update）
- **对比结构**: may have been trained... but has never encountered...
- **翻译**: 前沿模型可能已经用数十亿份文档训练过，但它从未遇到过某位法律专业人士上周二询问的那条特定法规更新。

**2.** Hiring enough domain experts to annotate every failure case across every industry is expensive and inherently bottlenecked.

- **主语**: Hiring enough domain experts to annotate every failure case across every industry（动名词短语作主语）
- **结构**: hire sb. to do sth. / across every industry
- **谓语**: is expensive and inherently bottlenecked
- **翻译**: 聘请足够多的领域专家来标注每个行业的每一个失败案例，既昂贵又天然受到瓶颈制约。

---

## 文章大意（中文概括）

本文介绍初创公司Trajectory的持续学习AI系统。传统AI模型训练结束后知识冻结，Trajectory通过记录模型失误、专家标注、每周后训练的方式让模型不断改进。其窄领域模型在医疗、法律、金融等专业场景超越了前沿实验室的通用模型。但批评者担忧模型稳定性、数据污染等问题，且依赖人工标注限制了可扩展性。尽管如此，"AI应该从经验中学习"这一理念本身难以反驳。

---

## 思考题

**1.** According to the passage, what is the fundamental limitation of current AI models?

A. They require too much computing power to deploy.

B. Their knowledge stops updating once training is completed.

C. They cannot process queries in narrow domains.

D. They produce inaccurate answers more often than accurate ones.

<details>
<summary>答案与解析</summary>
<b>B</b>。文章开篇指出"they stop learning the moment training ends"，"knowledge is frozen"。A原文未提及算力问题；C与原文相反，Trajectory的窄领域模型反而表现更好；D过于绝对，原文未对比准确率高低。
</details>

**2.** Why do critics worry about Trajectory's weekly update cycle?

A. The updates may cause the model to change its reasoning unpredictably.

B. The updates are too infrequent to keep pace with new information.

C. The updates require clients to retrain their own systems.

D. The updates only benefit clients in the legal industry.

<details>
<summary>答案与解析</summary>
<b>A</b>。批评者担心"A legal firm that relies on an AI's interpretation...needs consistency, not a system that might shift its reasoning between Monday and Friday"，即模型每周变化可能导致推理不一致。B说更新不够频繁，与原文矛盾；C、D原文未提及。
</details>

**3.** The word "sidestep" in the fifth paragraph most nearly means ______.

A. confront directly

B. avoid or bypass

C. explain in detail

D. reproduce accidentally

<details>
<summary>答案与解析</summary>
<b>B</b>。"sidestep"意为"回避、绕开"，原文说Trajectory通过依赖人工标注而非自动反馈循环来回避一些技术问题。A是反义；C、D与词义无关。
</details>
