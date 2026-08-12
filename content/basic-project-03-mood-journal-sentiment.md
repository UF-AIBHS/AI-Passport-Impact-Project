# Project 3: Mood Journal Sentiment Tracker

*Mentors: To be announced*

**Problem:** Mood-tracking tools that route personal journal text through a third-party API force a privacy trade-off students shouldn't have to accept just to get sentiment trends over time.

**Context:** Fine-tunes an emotion classifier starting from `bhadresh-savani/distilbert-base-uncased-emotion`, based on [dair-ai/emotion](https://huggingface.co/datasets/dair-ai/emotion) (public, on Hugging Face) and optionally extended with a handful of self-labeled journal entries — training is required here, not just prompting.

**Goals:** Classify each journal entry's dominant emotion and chart the trend over time, without sending personal journal text to a third-party API.

**Deliverables:** A daily journal entry form + trend chart (e.g. stacked area of emotion scores per day), running the classifier locally so entries never leave the machine. Students label ~30 of their own entries, re-tune the base checkpoint on them, and compare classifications before/after tuning to see the effect of a small amount of domain-specific training data.

*Showcase: TBD*

[← Back to all Foundations projects](basic-index.md)
