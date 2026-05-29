# Scaling Laws for Neural Language Models

> **论文**: Scaling Laws for Neural Language Models
> **作者**: Kaplan et al. (OpenAI)
> **发布**: 2020
> **日期**: 2026-07-09

---

## 正文

The performance of neural language models exhibits remarkable regularity as a function of scale. We find that cross-entropy loss decreases as a power law with respect to three factors: the number of model parameters N, the size of the dataset D, and the amount of compute C used for training. These scaling laws hold across several orders of magnitude, with deviations of only a few percent, suggesting that they capture fundamental properties of language model behaviour.

Specifically, when optimally allocated, loss scales as L(N) ∝ N^(−α) for parameter count, L(D) ∝ D^(−β) for dataset size, and L(C) ∝ C^(−γ) for compute, where the exponents α, β, and γ are approximately 0.076, 0.095, and 0.050 respectively. These power-law relationships imply that each factor contributes to model performance in a predictable manner, and that diminishing returns set in gradually rather than abruptly.

One of the most consequential findings concerns the optimal allocation of a fixed compute budget. When training a model with a given amount of compute, there is an optimal model size and an optimal number of training tokens that minimise loss. Counterintuitively, the optimal strategy is to train relatively large models on relatively modest amounts of data, stopping training well before convergence. This result challenged the prevailing practice of training smaller models to convergence on vast datasets, and it has since reshaped how the field approaches model development.

The scaling laws also reveal an important asymmetry: model size and data contribute unequally to performance. Increasing the number of parameters yields larger per-unit improvements than increasing the dataset size, up to a point. However, a model that is too large for its dataset will overfit, and the benefits of additional parameters diminish rapidly when data is scarce. This finding underscores the importance of balancing model capacity with data availability.

Furthermore, we observe that the scaling trends are largely independent of the specific architecture or optimisation details, provided that the model is not excessively bottlenecked. Changes in architecture—such as the number of attention heads, layer width, or depth—affect performance primarily through their impact on the effective parameter count. This suggests that the scaling laws reflect general principles of statistical learning rather than properties specific to any particular model design.

The practical implications are significant. By estimating the compute-optimal model size for a given budget, researchers can avoid both undersized models that fail to exploit available resources and oversized models that waste compute on overfitting. The Chinchilla model, released by DeepMind in 2022, validated these predictions by demonstrating that a model trained according to scaling law principles significantly outperforms a larger model trained on less data.

These results also raise important questions about the limits of scaling. If performance continues to improve as a power law, how far can scaling go before encountering fundamental barriers? The answer remains unknown, but the regularity of the scaling trends suggests that the current paradigm of increasing scale has not yet been exhausted.

---

## 核心词汇

| 英文 | 释义 |
|------|------|
| cross-entropy | n. 交叉熵 |
| power law | 幂律 |
| exponent | n. 指数 |
| allocate | v. 分配，配置 |
| deviation | n. 偏差，偏离 |
| optimal | adj. 最优的，最佳的 |
| convergence | n. 收敛 |
| prevailing | adj. 盛行的，占主导的 |
| asymmetry | n. 不对称 |
| overfit | v. 过拟合 |
| bottleneck | n. 瓶颈 |
| exhaust | v. 耗尽，用完 |

## 长难句解析

**1.** "Counterintuitively, the optimal strategy is to train relatively large models on relatively modest amounts of data, stopping training well before convergence."

- **主干**: the optimal strategy is to train relatively large models on relatively modest amounts of data
- **Counterintuitively** 是副词，表示"与直觉相反地"。
- **stopping training well before convergence** 是现在分词短语做伴随状语，说明"在远未收敛时就停止训练"。
- **翻译**: 与直觉相反，最优策略是在相对适中的数据量上训练相对较大的模型，并在远未收敛时就停止训练。

**2.** "Changes in architecture—such as the number of attention heads, layer width, or depth—affect performance primarily through their impact on the effective parameter count."

- **主干**: Changes in architecture affect performance primarily through their impact on the effective parameter count
- 破折号之间 **such as the number of attention heads, layer width, or depth** 是对 changes in architecture 的举例。
- **through their impact on the effective parameter count** 是方式状语，表示"通过它们对有效参数量的影响"。
- **翻译**: 架构的变更——如注意力头数、层宽或深度——主要通过其对有效参数量的影响来影响性能。

## 文章大意

本文介绍了 OpenAI 发现的神经语言模型缩放定律。核心发现：交叉熵损失与模型参数量 N、数据集大小 D、计算量 C 之间呈幂律关系。最重要的实践发现是：在固定计算预算下，最优策略是训练较大的模型但使用适中的数据量，并在收敛之前就停止训练。模型规模和数据对性能的贡献存在不对称性。缩放趋势在很大程度上独立于具体架构，反映了统计学习的一般原理。这些发现重塑了 AI 领域的模型开发策略。

## 思考题

**1. What is the main finding of the scaling laws paper?**
- A) Larger datasets always lead to better model performance than larger models.
- B) Model performance improves as a power-law function of parameter count, dataset size, and compute.
- C) Architecture design is more important than model size for performance.
- D) All neural networks eventually converge to the same loss value regardless of scale.

<details><summary>答案</summary>B</details>

**2. What is the counterintuitive finding about optimal compute allocation?**
- A) Smaller models trained to convergence perform better than larger models.
- B) The best approach is to train large models on modest data and stop before convergence.
- C) Increasing dataset size is always more effective than increasing model size.
- D) Compute budget should be divided equally between training and inference.

<details><summary>答案</summary>B</details>

**3. What does the independence of scaling trends from architecture details suggest?**
- A) Different architectures produce identical models.
- B) The scaling laws reflect general principles of statistical learning rather than specific model designs.
- C) Architecture improvements are unnecessary for advancing AI.
- D) Only transformer architectures follow power-law scaling.

<details><summary>答案</summary>B</details>
