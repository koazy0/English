# Attention Is All You Need — Transformer 架构

> **论文**: Attention Is All You Need
> **作者**: Vaswani et al. (Google Brain / Google Research)
> **会议**: NeurIPS 2017
> **日期**: 2026-06-04

---

## 正文

The dominant sequence transduction models are based on complex recurrent neural networks that include an encoder and a decoder. The best models also connect the encoder and decoder through an attention mechanism. We propose a new simple network architecture, the Transformer, based solely on attention mechanisms, dispensing with recurrence and convolutions entirely.

Recurrent models typically generate a sequence of hidden states along the input sequence. This sequential nature prevents parallelization within training examples, which becomes critical at longer sequence lengths. Although recent work has achieved significant improvements through factorization tricks and conditional computation, the fundamental constraint of sequential computation remains.

The Transformer avoids this recurrence entirely. Instead, it relies entirely on an attention mechanism to draw global dependencies between input and output sequences. The Transformer allows for significantly more parallelization and can reach a new state of the art in translation quality after only a fraction of the training time.

The encoder maps an input sequence of symbol representations into a sequence of continuous representations. The decoder takes that output and generates an output sequence one element at a time. At each step, the model consumes the previously generated symbols as additional input when generating the next. The encoder is composed of a stack of identical layers, each with two sub-layers. The first is a multi-head self-attention mechanism, and the second is a simple, position-wise fully connected feed-forward network. A residual connection is employed around each sub-layer, followed by layer normalization.

The decoder also includes a stack of identical layers. In addition to the two sub-layers found in the encoder, the decoder inserts a third sub-layer that performs multi-head attention over the output of the encoder stack. We also modify the self-attention sub-layer in the decoder to prevent positions from attending to subsequent positions. This masking ensures that predictions for position can depend only on known outputs at positions before it.

We trained the Transformer on the WMT 2014 English-to-German translation task and the English-to-French task. On the English-to-German task, the big model achieves a new state of the art. On the English-to-French task, our model achieves a significantly higher score than previous models, while training at a fraction of the cost. The model requires significantly less time to train than architectures based on recurrent or convolutional layers.

---

## 核心词汇

| 英文 | 释义 |
|------|------|
| transduction | n. 转换，转导 |
| dispensing with | 摒弃，免除 |
| recurrence | n. 循环，递归 |
| parallelization | n. 并行化 |
| factorization | n. 因式分解，分解 |
| consecutive | adj. 连续的 |
| residual | adj. 残差的，剩余的 |
| normalization | n. 归一化，标准化 |
| subsequent | adj. 随后的，后续的 |
| masking | n. 掩码，遮蔽 |
| fraction | n. 小部分，分数 |
| solely | adv. 仅仅，唯一地 |

## 长难句解析

**1.** "We propose a new simple network architecture, the Transformer, based solely on attention mechanisms, dispensing with recurrence and convolutions entirely."

- **主干**: We propose a new simple network architecture
- **同位语**: the Transformer = architecture
- **修饰**: based solely on attention mechanisms (后置定语，修饰 Transformer)
- **状语**: dispensing with recurrence and convolutions entirely (伴随状语，表示"摒弃了循环和卷积")
- **翻译**: 我们提出了一种新的简单网络架构——Transformer，它完全基于注意力机制，彻底摒弃了循环和卷积。

**2.** "Although recent work has achieved significant improvements through factorization tricks and conditional computation, the fundamental constraint of sequential computation remains."

- **让步状语**: Although recent work has achieved... (尽管近期工作已取得显著改进)
- **介词短语**: through factorization tricks and conditional computation (通过分解技巧和条件计算)
- **主句**: the fundamental constraint of sequential computation remains (顺序计算的根本限制仍然存在)
- **翻译**: 尽管近期的研究通过分解技巧和条件计算取得了显著改进，但顺序计算的根本限制仍然存在。

## 文章大意

本文介绍了 Transformer 架构，它完全抛弃了传统循环神经网络的顺序计算方式，仅使用注意力机制来建立输入与输出之间的全局依赖关系。Transformer 由编码器和解码器堆叠组成，每个层包含多头自注意力机制和前馈网络，并使用残差连接与层归一化。在机器翻译任务上，Transformer 以更少的训练时间取得了当时最优的结果。

## 思考题

**1. What is the main advantage of the Transformer over recurrent models according to the passage?**
- A) It uses fewer parameters than recurrent models.
- B) It allows more parallelization and requires less training time.
- C) It achieves better results only on English-to-German tasks.
- D) It replaces attention mechanisms with convolutional layers.

<details><summary>答案</summary>B</details>

**2. Why does the decoder insert a third sub-layer?**
- A) To perform multi-head attention over the encoder output.
- B) To add more feed-forward connections.
- C) To replace the self-attention mechanism.
- D) To prevent the encoder from processing input.

<details><summary>答案</summary>A</details>

**3. The masking in the decoder self-attention sub-layer is designed to:**
- A) Speed up the training process.
- B) Prevent attending to future positions during generation.
- C) Replace layer normalization.
- D) Reduce the number of attention heads.

<details><summary>答案</summary>B</details>
