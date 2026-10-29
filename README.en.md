# EVIDA demo guide

4th JUMP AI finals · Team NDAgent.

EVIDA is a drug-discovery research agent that starts from a **disease and research goal**. It investigates evidence, runs computations, examines mechanisms and candidates, and revises the next action when observations arrive.

- [Open the research workspace](https://evida.ndagentevida.com)
- [Browse the demo guide](https://Hong-Lavi.github.io/evida-demo/)
- [Product code and setup](https://github.com/Hong-Lavi/evida-submission-2026)
- [한국어 안내](README.md)

## Saved disease studies

[Epilepsy](https://evida.ndagentevida.com/?workspace=ws_d575a20bbf9047d2), [COPD](https://evida.ndagentevida.com/?workspace=ws_ff8a3fd859984073), [ATTR-CM](https://evida.ndagentevida.com/?workspace=ws_b8cdca2ed22641ab), [Parkinson disease](https://evida.ndagentevida.com/?workspace=ws_62adbaf10b8249d3), [NSCLC](https://evida.ndagentevida.com/?workspace=ws_4c375887117542a8), [MASH](https://evida.ndagentevida.com/?workspace=ws_47f9067e7c434890). Open the current proposal, then inspect candidates, computations, experiments and sources.

## Follow one research loop

1. Enter the disease and the outcome you want to change.
2. Inspect the evidence and computations, including source locations, inputs, values, units and conditions.
3. Review conditional candidates and the next comparison: which explanations it separates and how each outcome would change the decision.
4. Add an observation with its source and measurement conditions. Compare the retained and revised judgments and the next action.

Small molecules and siRNA are the main computational candidate workflows. Start with the saved [pulmonary fibrosis](https://evida.ndagentevida.com/?workspace=ws_3c8fe9df9cd14339), [PDE4B](https://evida.ndagentevida.com/?workspace=ws_1ff05aa2d7c24e0e) or [ALS](https://evida.ndagentevida.com/?workspace=ws_4475545a286541b2) studies, then open other records from the study list. Reading saved results and source material uses no model calls.

## Tools and reasoning

The product connects **43 computation and analysis functions** to its execution workflow. Results retain their inputs, outputs and conditions across molecular, RNA, pathway and observation-selection tasks.

One reasoning core connects **a 500-paper review record with 48 conditional reasoning perspectives**. It supports forming explanations, choosing information that can change a decision, and revising claims after an outcome. Source locations, applicability conditions and case dispositions remain inspectable.

## Model access

New public requests use the **competition API with GPT-6 Sol / medium**. If the API reports its token-usage limit with **HTTP 403**, the visitor can explicitly select and confirm the submitter's personal subscription route: **Claude Opus 5 / medium or GPT-6 Sol / medium**.

New questions, explanations and follow-up reviews run the model. The workspace shows route availability and research progress. Use research questions and materials suitable for a public demo environment.

See the [walkthrough](docs/DEMO_GUIDE.md), the [fixed evaluation record](evaluation.json), and the [component evaluation conditions, original outputs and recomputation code](https://github.com/Hong-Lavi/evida-submission-2026/tree/main/evaluation/components-20261002).

