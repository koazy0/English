# InstructGPT: Aligning Language Models with Human Intent

| 项目 | 内容 |
|------|------|
| 日期 | 2026-09-22 |
| 类型 | CS论文摘要 |
| 难度 | ★★★★☆ |
| 来源 | Ouyang et al., NeurIPS 2022 |

---

When OpenAI released GPT-3 in 2020, it demonstrated that large language models could generate remarkably fluent text. Yet anyone who used the model quickly encountered a persistent frustration: GPT-3 often failed to follow instructions. Asked to summarize a document, it might continue writing the document instead. Asked to answer a question, it might respond with a related but different question. The model was powerful but poorly aligned — it had learned to predict the next token in internet text, not to do what users actually wanted. InstructGPT, described by Ouyang et al. in their 2022 NeurIPS paper, was OpenAI's answer to this misalignment, and it remains one of the most consequential papers in the field of AI alignment.

The paper introduces a three-step pipeline for aligning language models with human intent. The first step is supervised fine-tuning (SFT). The authors collect demonstration data — examples of desired behavior written by human labelers — and fine-tune the pretrained GPT-3 model on these demonstrations. This gives the model a basic understanding of how to follow instructions, but SFT alone is insufficient because it cannot anticipate all the ways a model might deviate from desired behavior.

The second step introduces reward modeling. Human labelers are presented with multiple model outputs for the same prompt and asked to rank them from best to worst based on how well they follow the instruction. These rankings are used to train a reward model — a separate neural network that learns to predict which outputs humans would prefer. The reward model effectively distills human judgment into a scalar function that can evaluate any model output.

The third step applies reinforcement learning from human feedback (RLHF). The fine-tuned language model generates outputs, which are scored by the reward model, and the language model is updated using the proximal policy optimization (PPO) algorithm to maximize the reward. This creates a feedback loop: the language model learns to produce outputs that score highly under the reward model, which in turn reflects human preferences.

The results were striking. On a head-to-head comparison, labelers preferred InstructGPT outputs over GPT-3 outputs 85 percent of the time for prompt types in the training distribution and 71 percent of the time for held-out prompt types. More importantly, InstructGPT was substantially better at following instructions, less likely to generate toxic content, and more likely to honestly express uncertainty rather than fabricate answers. A 1.3-billion-parameter InstructGPT model was preferred over the 175-billion-parameter GPT-3, suggesting that alignment can be more important than scale.

The paper also documents a crucial tension: the alignment tax. Models trained with RLHF performed slightly worse on some standard NLP benchmarks than models trained without it, raising the question of whether alignment inevitably requires sacrificing some capability. Whether this trade-off is fundamental or merely an artifact of current techniques remains an open question that continues to shape the field.

---

## 核心词汇

1. **alignment** — n. 对齐
2. **misalignment** — n. 不对齐
3. **supervised** — adj. 有监督的
4. **fine-tuning** — n. 微调
5. **demonstration** — n. 示范
6. **deviate** — v. 偏离
7. **scalar** — adj. 标量的
8. **proximal** — adj. 近端的
9. **optimization** — n. 优化
10. **held-out** — adj. 留出的
11. **toxic** — adj. 有毒的
12. **fabricate** — v. 伪造

---

## 长难句解析

1. Human labelers are presented with multiple model outputs for the same prompt and asked to rank them from best to worst based on how well they follow the instruction, and these rankings are used to train a reward model — a separate neural network that learns to predict which outputs humans would prefer.
   - **解析**：and 连接两个并列分句。前句两个谓语 are presented 和 (are) asked，based on 介词短语说明排序依据。后句 these rankings 指代排序结果，破折号后是 reward model 的同位语定义，that 引导定语从句，which 引导宾语从句。整句展示奖励模型训练的完整逻辑。

2. A 1.3-billion-parameter InstructGPT model was preferred over the 175-billion-parameter GPT-3, suggesting that alignment can be more important than scale.
   - **解析**：主句比较两个模型的偏好度，现在分词 suggesting 引导结果状语，that 引导宾语从句。1.3B vs 175B 的参数差距使得结论极为有力：对齐比规模更重要。这一发现深刻影响了后续AI研究方向。

---

## 文章大意

InstructGPT是OpenAI解决大语言模型与人类意图不对齐问题的里程碑式工作。论文提出三步管线：第一步用人类示范数据做监督微调；第二步让人类标注者对多输出排序，训练奖励模型；第三步用RLHF（人类反馈强化学习）通过PPO算法优化语言模型以最大化奖励。结果显示标注者85%的情况下偏好InstructGPT输出，1.3B参数的InstructGPT优于175B的GPT-3，表明对齐可能比规模更重要。论文也记录了"对齐税"——对齐训练可能在某些基准上降低能力。

---

## 思考题

1. What is the main problem with GPT-3 that InstructGPT was designed to solve?
   - A) GPT-3 was too slow
   - B) GPT-3 often failed to follow instructions and was poorly aligned with human intent
   - C) GPT-3 was too small
   - D) GPT-3 could not generate text

2. In the three-step pipeline, what is the role of the reward model?
   - A) To generate training data
   - B) To predict which outputs humans would prefer and score model outputs
   - C) To pretrain the language model
   - D) To reduce the model's parameter count

3. What does the finding that a 1.3B InstructGPT was preferred over 175B GPT-3 suggest?
   - A) Larger models are always better
   - B) Alignment can be more important than scale
   - C) Smaller models cannot be aligned
   - D) Parameter count is the only metric that matters
