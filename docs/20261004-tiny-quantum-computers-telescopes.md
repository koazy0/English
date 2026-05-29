# Tiny Quantum Computers Could Help Create Giant Telescopes

| 项目 | 内容 |
|------|------|
| 日期 | 2026-10-04 |
| 类型 | 外刊精选 |
| 难度 | ★★★★☆ |
| 来源 | Scientific American |

---

The dream of building telescopes so large that they could resolve continents on exoplanets orbiting distant stars has long collided with an intractable physical constraint: a telescope's resolving power is proportional to its aperture diameter, and engineering mirrors larger than about 40 meters pushes the limits of what is structurally feasible on Earth's surface. The proposed Extremely Large Telescope, currently under construction in Chile, features a 39-meter segmented mirror and is considered near the practical maximum for ground-based observatories. But what if the resolving power of a colossal telescope could be achieved not by building a single enormous mirror but by combining signals from many smaller ones — and what if the mathematical key to combining those signals lay in quantum computing?

A team of physicists and astronomers has proposed exactly this. Their scheme, published recently in Physical Review Letters, outlines how quantum computers could solve the computational bottleneck that has prevented optical interferometry — the technique of combining light from multiple telescopes to achieve the resolution of a single larger one — from scaling beyond a handful of instruments. Radio astronomers have used interferometry for decades; the Event Horizon Telescope, which produced the first image of a black hole, combined data from eight radio telescopes across the globe to achieve the resolution of an Earth-sized dish. But optical interferometry is far more demanding because visible light has wavelengths thousands of times shorter than radio waves, meaning that the timing precision required to combine signals is correspondingly more exacting.

The current approach to optical interferometry requires physically transmitting light from each telescope to a central beam combiner using vacuum tubes or fiber optics — a process that becomes impractical beyond distances of a few hundred meters. The quantum computing approach would eliminate the need to transmit light at all. Instead, each telescope would measure the quantum state of incoming photons and transmit only classical information — measurement results — to a central quantum computer, which would then reconstruct the interference pattern computationally.

This is where quantum advantage becomes essential. Reconstructing an interference pattern from distributed quantum measurements requires solving a mathematical problem called quantum state tomography, which scales exponentially with the number of telescopes. For an array of just 20 telescopes, the classical computation would take longer than the age of the universe. A quantum computer, exploiting superposition and entanglement, could in principle solve it in hours.

The catch is that the quantum computers required do not yet exist in sufficient maturity. Current quantum processors have on the order of hundreds of qubits with limited coherence times, whereas the proposed scheme would require thousands of error-corrected qubits operating reliably for extended periods. The researchers estimate that practical quantum-enhanced optical interferometry is likely 15 to 20 years away — roughly the same timeline as the next generation of extremely large telescopes.

If the scheme works, the implications would be transformative. An array of modest 4-meter telescopes distributed across a continent, combined through quantum computation, could achieve the resolution of a single telescope with a 1,000-meter mirror — enough to resolve atmospheric features on the nearest exoplanets. The universe, seen through the lens of quantum mechanics, may be clearer than we ever imagined.

---

## 核心词汇

1. **intractable** — adj. 棘手的
2. **aperture** — n. 孔径
3. **segmented** — adj. 分段的
4. **interferometry** — n. 干涉测量法
5. **exacting** — adj. 严格的
6. **tomography** — n. 层析成像
7. **exponentially** — adv. 指数级地
8. **superposition** — n. 叠加
9. **entanglement** — n. 纠缠
10. **coherence** — n. 相干性
11. **qubit** — n. 量子比特
12. **transformative** — adj. 变革性的

---

## 长难句解析

1. Their scheme outlines how quantum computers could solve the computational bottleneck that has prevented optical interferometry — the technique of combining light from multiple telescopes to achieve the resolution of a single larger one — from scaling beyond a handful of instruments.
   - **解析**：how 引导宾语从句，that 引导定语从句修饰 bottleneck，破折号内是 interferometry 的同位语定义，"from scaling beyond a handful of instruments" 表瓶颈的后果——无法扩展到少数几台以上。句子层层递进：方案→解决瓶颈→瓶颈是什么→为什么是瓶颈。

2. An array of modest 4-meter telescopes distributed across a continent, combined through quantum computation, could achieve the resolution of a single telescope with a 1,000-meter mirror — enough to resolve atmospheric features on the nearest exoplanets.
   - **解析**：主语 "An array of modest 4-meter telescopes"，两个过去分词短语 "distributed across a continent" 和 "combined through quantum computation" 作定语，谓语 could achieve，破折号后补充说明其科学意义——足以分辨最近系外行星的大气特征。4米→1000米的分辨率飞跃凸显量子计算的潜力。

---

## 文章大意

物理学家和天文学家提出利用量子计算机突破光学干涉测量的计算瓶颈，从而实现超大望远镜的分辨率。当前光学干涉需要物理传输光信号，限制了基线距离。新方案让每台望远镜测量光子量子态，仅传输经典信息，由量子计算机重建干涉图样。但重建需要量子态层析，计算量随望远镜数量指数增长，经典计算不可行，量子计算则可能几小时完成。实用化还需15-20年，但一旦成功，4米望远镜阵列可达到1000米镜面的分辨率，足以观测系外行星大气。

---

## 思考题

1. Why has optical interferometry been harder to scale than radio interferometry?
   - A) Optical telescopes are more expensive
   - B) Visible light has much shorter wavelengths, requiring far more precise timing
   - C) Optical signals cannot be recorded
   - D) There are fewer optical telescopes in the world

2. What is the key advantage of the quantum computing approach over current methods?
   - A) It is cheaper to build
   - B) It eliminates the need to physically transmit light between telescopes
   - C) It requires fewer telescopes
   - D) It works with radio waves only

3. What is the main obstacle to implementing this scheme currently?
   - A) There are not enough telescopes
   - B) Quantum computers with sufficient error-corrected qubits do not yet exist
   - C) The mathematics has not been worked out
   - D) Astronomers are not interested
