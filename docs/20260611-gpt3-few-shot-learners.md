# Language Models are Few-Shot Learners — GPT-3

> **论文**: Language Models are Few-Shot Learners
> **作者**: Brown et al. (OpenAI)
> **会议**: NeurIPS 2020
> **日期**: 2026-06-11

---

## 正文

Recent work has demonstrated substantial gains on many natural language processing tasks by pre-training language models on a large corpus of text and then fine-tuning them for specific tasks. While this approach has achieved impressive results, each new task requires a dedicated fine-tuning dataset and a separate fine-tuned model. This dependence on task-specific fine-tuning limits the applicability of language models.

We demonstrate that scaling up language models greatly improves task-agnostic, few-shot performance. We train GPT-3, an autoregressive language model with 175 billion parameters, and test its ability to perform tasks without any gradient updates or fine-tuning. Instead, tasks and few-shot demonstrations are specified purely via text interaction with the model.

GPT-3 achieves strong performance on many natural language processing datasets, including translation, question answering, and cloze tasks. It also shows promising results on tasks that require on-the-fly reasoning or rapid adaptation, such as unscrambling words, using novel words in sentences, or performing three-digit arithmetic. In all these cases, GPT-3 is applied without any gradient updates. For all tasks, GPT-3 is applied with the same pre-trained model — only the text prompt changes.

We also identify some limitations of GPT-3. Despite its strengths, GPT-3 has notable weaknesses in text generation. It can generate syntactically fluent but semantically incoherent passages, and it sometimes repeats itself excessively. It also struggles with tasks that require careful reasoning over long contexts or comparing multiple documents.

We examine the effect of model scale by training multiple smaller models and comparing their performance. The results show a consistent trend: larger models make increasingly efficient use of in-context information. This suggests that the in-context learning abilities of language models improve smoothly with scale. In other words, the performance gap between few-shot learning and fine-tuning narrows as model size increases.

Our findings raise an important question: whether language models can eventually compete with fine-tuned models on all tasks through pure in-context learning alone, or whether fine-tuning will remain necessary for the highest levels of performance. While GPT-3 does not settle this question definitively, it demonstrates that very large language models can be highly capable few-shot learners, reducing the need for task-specific data collection and model training.

---

## 核心词汇

| 英文 | 释义 |
|------|------|
| autoregressive | adj. 自回归的 |
| task-agnostic | adj. 与任务无关的 |
| few-shot | adj. 少样本的 |
| gradient | n. 梯度 |
| demonstration | n. 示范，示例 |
| cloze | n. 完形填空 |
| syntactically | adv. 句法上地 |
| semantically | adv. 语义上地 |
| incoherent | adj. 不连贯的 |
| on-the-fly | adj. 即时的，实时的 |
| prompt | n. 提示，提示词 |
| definitively | adv. 决定性地，明确地 |

## 长难句解析

**1.** "We demonstrate that scaling up language models greatly improves task-agnostic, few-shot performance, sometimes even reaching competitiveness with prior state-of-the-art fine-tuning approaches."

- **主干**: We demonstrate that... (我们证明了……)
- **宾语从句**: scaling up language models greatly improves task-agnostic, few-shot performance (扩大语言模型的规模极大提升了与任务无关的少样本性能)
- **分词短语**: sometimes even reaching competitiveness with prior state-of-the-art fine-tuning approaches (有时甚至能与之前最先进的微调方法相竞争)
- **翻译**: 我们证明了扩大语言模型的规模能极大地提升与任务无关的少样本性能，有时甚至能与之前最先进的微调方法相竞争。

**2.** "The results show a consistent trend: larger models make increasingly efficient use of in-context information, which suggests that the in-context learning abilities of language models improve smoothly with scale."

- **主干**: The results show a consistent trend (结果显示出一致的趋势)
- **冒号解释**: larger models make increasingly efficient use of in-context information (更大的模型越来越高效地利用上下文信息)
- **定语从句**: which suggests that... (这表明……)
- **宾语从句**: the in-context learning abilities of language models improve smoothly with scale (语言模型的上下文学习能力随规模平滑提升)
- **翻译**: 结果显示出一致的趋势：更大的模型越来越高效地利用上下文信息，这表明语言模型的上下文学习能力随规模增长而平滑提升。

## 文章大意

本文介绍了 GPT-3，一个拥有 1750 亿参数的自回归语言模型。与此前需要针对每个任务单独微调的方法不同，GPT-3 通过纯文本交互（即上下文学习）来完成任务，无需任何梯度更新。实验表明，随着模型规模增大，少样本学习的效果显著提升，与微调方法之间的差距逐渐缩小。不过 GPT-3 也有明显局限，如生成语义不连贯的文本、长上下文推理能力不足等。

## 思考题

**1. According to the passage, what is the key difference between GPT-3 and previous fine-tuning approaches?**
- A) GPT-3 uses more training data for fine-tuning.
- B) GPT-3 performs tasks through text interaction without gradient updates.
- C) GPT-3 requires dedicated datasets for each new task.
- D) GPT-3 only works on translation and question answering.

<details><summary>答案</summary>B</details>

**2. What does the scaling experiment reveal about in-context learning?**
- A) Smaller models perform equally well with in-context information.
- B) In-context learning abilities improve as model size increases.
- C) Fine-tuning becomes more necessary with larger models.
- D) Model scale has no effect on few-shot performance.

<details><summary>答案</summary>B</details>

**3. Which of the following is mentioned as a weakness of GPT-3?**
- A) It cannot perform three-digit arithmetic at all.
- B) It requires excessive fine-tuning for each task.
- C) It may generate text that is syntactically fluent but semantically incoherent.
- D) It fails to use novel words in sentences.

<details><summary>答案</summary>C</details>
