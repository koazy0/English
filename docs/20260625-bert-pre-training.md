# BERT: Pre-training of Deep Bidirectional Transformers — BERT

> **论文**: BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding
> **作者**: Devlin et al. (Google AI Language)
> **会议**: NAACL 2019
> **日期**: 2026-06-25

---

## 正文

We introduce a new language representation model called BERT, which stands for Bidirectional Encoder Representations from Transformers. Unlike recent language representation models, BERT is designed to pre-train deep bidirectional representations from unlabeled text by jointly conditioning on both left and right context in all layers. As a result, the pre-trained BERT model can be fine-tuned with just one additional output layer to create state-of-the-art models for a wide range of tasks, such as question answering and language inference, without substantial task-specific architecture modifications.

BERT addresses a key limitation of previous approaches. Existing pre-training methods can be divided into two strategies: feature-based and fine-tuning. Feature-based approaches, such as ELMo, use task-specific architectures that incorporate pre-trained representations as additional features. Fine-tuning approaches, such as OpenAI GPT, introduce minimal task-specific parameters and are trained by simply fine-tuning all pre-trained parameters. Both strategies share the same limitation during pre-training: they use unidirectional language models, which restrict the ability of the representation to capture context from both directions.

BERT overcomes this limitation with two novel pre-training tasks. The first is Masked Language Modeling (MLM). In this task, we randomly mask some percentage of the input tokens, and the model must predict the original vocabulary ID of the masked tokens based only on their context. Unlike standard language models that predict the next token given only the left context, MLM allows the representation to combine context from both the left and the right, which creates a truly bidirectional pre-trained model.

The second pre-training task is Next Sentence Prediction (NSP). Many important downstream tasks, such as question answering and natural language inference, are based on understanding the relationship between two sentences. To train a model that understands sentence relationships, we pre-train for a binary next sentence prediction task that can be trivially generated from any monolingual corpus. Specifically, when choosing sentences A and B for each pre-training example, 50% of the time B is the actual next sentence that follows A, and 50% of the time it is a random sentence from the corpus.

When fine-tuning, the self-attention mechanism in the Transformer allows BERT to model the dependencies between the input and output for a given task, regardless of whether they are separated or contiguous. For each task, we simply plug the task-specific inputs and outputs into BERT and fine-tune all the parameters end-to-end. BERT achieves state-of-the-art results on eleven natural language processing tasks, demonstrating the generality and effectiveness of the bidirectional pre-training approach.

---

## 核心词汇

| 英文 | 释义 |
|------|------|
| bidirectional | adj. 双向的 |
| jointly | adv. 联合地，共同地 |
| conditioning | n. 条件作用，条件化 |
| feature-based | adj. 基于特征的 |
| unidirectional | adj. 单向的 |
| mask | v. 掩盖，遮蔽 n. 掩码 |
| binary | adj. 二元的，二分类的 |
| trivially | adv. 简单地，不费事地 |
| monolingual | adj. 单语的 |
| contiguous | adj. 连续的，相邻的 |
| end-to-end | adj. 端到端的 |
| generality | n. 普适性，通用性 |

## 长难句解析

**1.** "Unlike recent language representation models, BERT is designed to pre-train deep bidirectional representations from unlabeled text by jointly conditioning on both left and right context in all layers."

- **状语**: Unlike recent language representation models (与近期的语言表示模型不同)
- **主干**: BERT is designed to pre-train deep bidirectional representations (BERT 被设计用于预训练深度双向表示)
- **来源**: from unlabeled text (来自无标注文本)
- **方式**: by jointly conditioning on both left and right context in all layers (通过在所有层中联合约束左右上下文)
- **翻译**: 与近期的语言表示模型不同，BERT 被设计用于通过在所有层中联合约束左右上下文，从无标注文本中预训练深度双向表示。

**2.** "Many important downstream tasks, such as question answering and natural language inference, are based on understanding the relationship between two sentences, which is not directly captured by standard language models."

- **主干**: Many important downstream tasks are based on understanding the relationship between two sentences (许多重要的下游任务基于理解两个句子之间的关系)
- **同位语举例**: such as question answering and natural language inference
- **定语从句**: which is not directly captured by standard language models (而标准语言模型无法直接捕捉这种关系)
- **翻译**: 许多重要的下游任务（如问答和自然语言推理）基于理解两个句子之间的关系，而标准语言模型无法直接捕捉这种关系。

## 文章大意

本文介绍了 BERT 模型，它通过两种新的预训练任务实现了真正的双向语言表示。第一种是掩码语言模型（MLM），随机遮蔽部分输入词元，让模型根据左右上下文预测被遮蔽的词，克服了单向语言模型的局限。第二种是下一句预测（NSP），训练模型理解两个句子之间的关系。预训练完成后，BERT 只需添加一个输出层即可在多种下游任务上微调，并在十一项自然语言处理任务上达到了当时最优效果，证明了双向预训练方法的通用性和有效性。

## 思考题

**1. What is the key limitation of previous pre-training strategies that BERT aims to overcome?**
- A) They require too much labeled data for pre-training.
- B) They use unidirectional language models that cannot capture bidirectional context.
- C) They cannot be applied to question answering tasks.
- D) They rely exclusively on convolutional architectures.

<details><summary>答案</summary>B</details>

**2. In the Masked Language Modeling task, why can BERT capture bidirectional context?**
- A) Because it masks all tokens in the input simultaneously.
- B) Because it predicts masked tokens based on both left and right context.
- C) Because it uses a separate decoder for each direction.
- D) Because it processes the input sequence twice.

<details><summary>答案</summary>B</details>

**3. According to the passage, which of the following is true about fine-tuning BERT?**
- A) Each task requires a completely new architecture from scratch.
- B) BERT replaces the self-attention mechanism during fine-tuning.
- C) Task-specific inputs and outputs are plugged into BERT and all parameters are fine-tuned end-to-end.
- D) Only the output layer parameters are updated while all others remain frozen.

<details><summary>答案</summary>C</details>
