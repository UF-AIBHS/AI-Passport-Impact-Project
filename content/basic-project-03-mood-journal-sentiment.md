# Project 3: Mood Journal Sentiment Tracker

*Mentors: To be announced*

**Frontend:** Daily journal entry form + a trend chart (emotion mix over time).

**Backend:** Fine-tuned emotion classifier, starting from `bhadresh-savani/distilbert-base-uncased-emotion` and re-tuned on a small student-labeled sample.

**Dataset:** [dair-ai/emotion](https://huggingface.co/datasets/dair-ai/emotion) (public, on Hugging Face) as a base, optionally extended with a handful of self-labeled journal entries.

**Training:** **Yes** — fine-tune (or lightly re-tune) the emotion classifier on your own small labeled sample.

**Goal:** Classify each journal entry's dominant emotion and chart the trend over time, without sending personal journal text to a third-party API.

**Plan:** Prompt your agent to build the journal form + a chart (e.g. stacked area of emotion scores per day), running the classifier locally so entries never leave the machine. Have students label ~30 of their own entries and re-tune the base checkpoint on them, then compare classifications before/after tuning to see the effect of a small amount of domain-specific training data.

[← Back to all Basic projects](basic-index.md)
