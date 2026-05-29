# Deep Residual Learning for Image Recognition — ResNet

> **论文**: Deep Residual Learning for Image Recognition
> **作者**: He, Zhang, Ren & Sun (Microsoft Research)
> **会议**: CVPR 2016
> **日期**: 2026-07-02

---

## 正文

Deeper neural networks are more difficult to train. As network depth increases, accuracy gets saturated and then degrades rapidly—a phenomenon known as the degradation problem. This is counterintuitive: deeper models should perform at least as well as shallower ones, since the additional layers could theoretically learn identity mappings. In practice, however, current solvers fail to find solutions that are as good as or better than the shallower architectures.

We address this degradation problem by introducing a deep residual learning framework. Instead of hoping each few stacked layers directly fit a desired underlying mapping, we explicitly let these layers fit a residual mapping. Formally, denoting the desired underlying mapping as H(x), we let the stacked nonlinear layers fit another mapping F(x) = H(x) − x. The original mapping is then recast into F(x) + x.

This formulation is motivated by the observation that if the optimal function is close to identity, it should be easier for the solver to push the residual toward zero than to fit an identity mapping by a stack of nonlinear layers. The key innovation is the introduction of shortcut connections—also called skip connections—that skip one or more layers. A shortcut connection simply performs identity mapping, and its output is added to the output of the stacked layers.

The resulting architecture, called ResNet, enables the training of networks that are substantially deeper than those previously used. Our deepest model contains 152 layers—eight times deeper than the well-known VGG network—yet has lower complexity. Despite this depth, the model is easier to optimise and achieves better accuracy. On the ImageNet validation set, ResNet achieves a 3.57 percent top-5 error rate, surpassing human-level performance on this benchmark for the first time.

Residual connections also improve generalisation. We evaluated ResNet on the CIFAR-10 dataset with network depths of up to 1202 layers. While extremely deep networks showed some overfitting on the training set, the residual formulation still enabled effective training, whereas plain networks of similar depth failed entirely. The residual learning principle provides a principled way to train very deep networks without degradation.

The implications extend beyond image classification. Residual connections have since become a standard component in neural network design, adopted in architectures for object detection, semantic segmentation, and even natural language processing. The central insight—that learning residuals is easier than learning unreferenced mappings—has proven remarkably general. By allowing gradient information to flow directly through shortcut connections, ResNet effectively solves the vanishing gradient problem that had long constrained the depth of trainable networks.

---

## 核心词汇

| 英文 | 释义 |
|------|------|
| degradation | n. 退化，降解 |
| saturated | adj. 饱和的 |
| counterintuitive | adj. 违反直觉的 |
| identity mapping | 恒等映射 |
| residual | adj. 残差的，剩余的 |
| recast | v. 重铸，重新表达 |
| shortcut | n. 捷径，快捷连接 |
| skip connection | 跳跃连接 |
| complexity | n. 复杂度 |
| benchmark | n. 基准测试 |
| overfitting | n. 过拟合 |
| vanishing gradient | 梯度消失 |

## 长难句解析

**1.** "Instead of hoping each few stacked layers directly fit a desired underlying mapping, we explicitly let these layers fit a residual mapping."

- **主干**: we explicitly let these layers fit a residual mapping
- **Instead of hoping each few stacked layers directly fit a desired underlying mapping** 是介词短语做状语，表示"与其期望……不如……"。
- **each few stacked layers** 指每几个堆叠的层。
- **翻译**: 与其期望每几个堆叠层直接拟合所需的底层映射，我们明确让这些层拟合一个残差映射。

**2.** "By allowing gradient information to flow directly through shortcut connections, ResNet effectively solves the vanishing gradient problem that had long constrained the depth of trainable networks."

- **主干**: ResNet effectively solves the vanishing gradient problem
- **By allowing gradient information to flow directly through shortcut connections** 是方式状语，说明ResNet如何解决该问题。
- **that had long constrained the depth of trainable networks** 是定语从句，修饰 vanishing gradient problem，说明该问题"长期以来限制了可训练网络的深度"。
- **翻译**: 通过允许梯度信息直接通过快捷连接流动，ResNet有效地解决了长期以来限制可训练网络深度的梯度消失问题。

## 文章大意

本文介绍了 ResNet 残差网络架构。核心问题是：网络加深后精度反而下降（退化问题）。核心创新是残差学习——让网络层学习残差映射 F(x) = H(x) − x 而非直接学习 H(x)，并通过跳跃连接实现 F(x) + x。ResNet-152 在 ImageNet 上取得 3.57% 的 top-5 错误率，首次超越人类表现。残差连接解决了梯度消失问题，使极深网络成为可能，并成为此后神经网络设计的标准组件。

## 思考题

**1. What is the degradation problem in deep neural networks?**
- A) Networks become too large to store in memory.
- B) Deeper networks show worse accuracy despite theoretical expectations of better performance.
- C) Training data becomes insufficient for deeper models.
- D) The computational cost increases exponentially with depth.

<details><summary>答案</summary>B</details>

**2. Why is learning a residual mapping easier than learning an identity mapping?**
- A) Residual mappings require fewer parameters.
- B) Pushing the residual toward zero is simpler than fitting an identity mapping with nonlinear layers.
- C) Identity mappings cannot be implemented in neural networks.
- D) Residual mappings avoid the use of activation functions.

<details><summary>答案</summary>B</details>

**3. What is the primary function of shortcut connections in ResNet?**
- A) They reduce the total number of parameters in the network.
- B) They enable gradient information to flow directly, solving the vanishing gradient problem.
- C) They replace the need for non-linear activation functions.
- D) They increase the training data by generating synthetic samples.

<details><summary>答案</summary>B</details>
