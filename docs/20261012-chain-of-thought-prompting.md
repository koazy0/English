# Chain-of-Thought Prompting: Eliciting Reasoning in Large Language Models

| 项目 | 内容 |
|------|------|
| 日期 | 2026-10-12 |
| 类型 | CS论文摘要 |
| 难度 | ★★★★☆ |
| 来源 | Wei et al., NeurIPS 2022 |

---

In the summer of 2022, a team at Google Research published a paper with a disarmingly simple finding that would reshape how practitioners use large language models: if you show a model a few examples of step-by-step reasoning before asking it to solve a problem, it becomes dramatically better at solving problems that require multi-step inference. The technique, called chain-of-thought (CoT) prompting, requires no additional training, no architectural changes, and no fine-tuning — only a different way of writing the prompts. Yet its impact on model performance, particularly on complex reasoning tasks, was so substantial that it has become one of the most widely adopted techniques in the large language model toolbox.

The paper's core experiment is elegantly straightforward. The authors evaluate language models on mathematical reasoning, commonsense reasoning, and symbolic manipulation tasks under two prompting conditions. In standard prompting, the model is given a few input-output examples without any intermediate steps — the question is followed directly by the answer. In chain-of-thought prompting, each example includes the reasoning process that connects the question to the answer: "Roger has 5 tennis balls. He buys 2 more cans of tennis balls. Each can has 3 tennis balls. How many tennis balls does he have now? Roger started with 5 balls. 2 cans of 3 each is 6. 5 + 6 = 11. The answer is 11."

The results were striking, particularly in their scaling behavior. For small models — those with roughly 10 billion parameters or fewer — chain-of-thought prompting produced little or no improvement, and in some cases made performance worse, as the models struggled to produce coherent reasoning chains. But for large models, the gains were dramatic. On the GSM8K math benchmark, PaLM 540B with chain-of-thought prompting achieved 56.9 percent accuracy, compared to 17.9 percent with standard prompting — a three-fold improvement. On the more challenging mathematical reasoning tasks, the improvement was even larger.

The authors identify chain-of-thought prompting as an emergent ability of large language models — a capability that is absent in small models but appears suddenly as model scale increases beyond a threshold. This finding has significant implications. It suggests that certain reasoning capabilities are not smoothly acquired through scaling but emerge discontinuously, and that the potential of large models may be significantly underestimated if they are only evaluated with standard prompting techniques.

The paper also explores several important properties of chain-of-thought reasoning. The reasoning chains need not be perfectly correct to improve performance; even approximate reasoning steps that capture the right general approach produce significant gains compared to direct answers. The technique is most effective on tasks that require multi-step reasoning, where individual steps are simple but must be composed correctly. On tasks that require only a single step or rely on retrieval rather than reasoning, chain-of-thought prompting provides little benefit and may even hurt performance due to the added length of the prompt.

Perhaps the most provocative implication is philosophical. Chain-of-thought prompting reveals that the capacity for step-by-step reasoning exists within large language models but is not activated by default. The model knows how to reason; it just needs to be shown that reasoning is expected. This raises questions about what other latent capabilities might be hidden within large models, waiting for the right prompting strategy to reveal them — and about whether the distinction between "knowing" and "showing" in AI systems is as clear as researchers have assumed.

---

## 核心词汇

1. **disarmingly** — adv. 令人放松地
2. **prompting** — n. 提示
3. **architectural** — adj. 架构的
4. **intermediate** — adj. 中间的
5. **coherent** — adj. 连贯的
6. **emergent** — adj. 涌现的
7. **discontinuously** — adv. 不连续地
8. **threshold** — n. 阈值
9. **underestimate** — v. 低估
10. **approximate** — adj. 近似的
11. **compose** — v. 组合
12. **provocative** — adj. 引人深思的

---

## 长难句解析

1. The technique, called chain-of-thought (CoT) prompting, requires no additional training, no architectural changes, and no fine-tuning — only a different way of writing the prompts — yet its impact on model performance was so substantial that it has become one of the most widely adopted techniques in the large language model toolbox.
   - **解析**：主语 The technique，called 过去分词作定语，三个 no 并列强调技术简便，破折号补充说明，yet 连接转折，so... that... 结构强调影响之大。核心对比：方法极其简单但效果极其显著。

2. It suggests that certain reasoning capabilities are not smoothly acquired through scaling but emerge discontinuously, and that the potential of large models may be significantly underestimated if they are only evaluated with standard prompting techniques.
   - **解析**：两个 that 引导并列宾语从句。第一个从句用 "not smoothly... but emerge discontinuously" 表明推理能力非平滑获得而是不连续涌现；第二个从句警告仅用标准提示评估会低估模型潜力。

---

## 文章大意

2022年Google Research发表的链式思考（CoT）提示论文发现：在提示中展示逐步推理示例可大幅提升模型在复杂推理任务上的表现，无需额外训练或架构修改。CoT提示对小模型几乎无效甚至有害，但对大模型效果显著——PaLM 540B在GSM8K上从17.9%提升至56.9%。CoT是大模型的涌现能力，在规模超过阈值后突然出现。推理链不必完美，近似步骤也能显著改善表现。最引人深思的启示是：推理能力潜在于大模型中但默认不被激活，需正确的提示策略来揭示。

---

## 思考题

1. What is the key difference between standard prompting and chain-of-thought prompting?
   - A) CoT uses more training data
   - B) CoT includes intermediate reasoning steps in the prompt examples
   - C) CoT requires a different model architecture
   - D) CoT only works on language tasks

2. Why does chain-of-thought prompting fail to improve small models?
   - A) Small models cannot produce coherent reasoning chains
   - B) Small models are too fast
   - C) Small models do not understand English
   - D) Small models have too many parameters

3. What does the paper suggest about the relationship between model scale and reasoning capability?
   - A) Reasoning improves smoothly and linearly with scale
   - B) Certain reasoning capabilities emerge discontinuously beyond a scale threshold
   - C) Scale has no effect on reasoning
   - D) Small models reason better than large ones
