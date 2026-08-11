# Streamlit & Gradio: A Beginner's Guide

Basic and Clinical Application projects need a frontend, and you don't need to know JavaScript or CSS to build one. Both Streamlit and Gradio let you wrap a Python function in a working web UI in a few lines — pick whichever fits the project, or ask your AI coding agent to build the app in either and it'll happily scaffold it.

**Sources:** [docs.streamlit.io](https://docs.streamlit.io/), [gradio.app/guides/quickstart](https://www.gradio.app/guides/quickstart), comparison from [uibakery.io/blog/streamlit-vs-gradio](https://uibakery.io/blog/streamlit-vs-gradio).

## Streamlit

General-purpose framework for interactive dashboards — you write a plain top-to-bottom Python script, and Streamlit re-runs it on every interaction.

```bash
pip install streamlit
```

```python
# app.py
import streamlit as st

st.title("My First App")
name = st.text_input("Your name")
if name:
    st.write(f"Hello, {name}!")
```

```bash
streamlit run app.py
```

Core building blocks: `st.write()` for near-anything (text, dataframes, charts), input widgets like `st.slider()` / `st.text_input()` / `st.button()`, and `@st.cache_data` to avoid re-running expensive functions (like loading a model) on every rerun.

## Gradio

Purpose-built for wrapping a single ML function or model as a demo — you describe inputs and outputs, and Gradio generates the interface.

```bash
pip install --upgrade gradio
```

```python
# app.py
import gradio as gr

def greet(name):
    return f"Hello {name}!"

demo = gr.Interface(fn=greet, inputs="textbox", outputs="textbox")
demo.launch()
```

```bash
python app.py
```

Opens at `http://localhost:7860`. Pass `demo.launch(share=True)` to get a public, shareable URL with no hosting setup — handy for showing a classmate or instructor a working demo without deploying anywhere.

## Which one for your project

| | Streamlit | Gradio |
|---|---|---|
| **Best for** | Dashboards, multi-step or multi-page apps, anything with charts/tables | A single model or function behind a simple input → output UI |
| **Customization** | High — layout, theming, many widget types | Lower — but you write less to get there |
| **Sharing** | Deploy to Streamlit Community Cloud (or run locally) | `share=True` gives a temporary public link instantly |
| **Typical fit here** | Chatbots, multi-field forms, journal/trend dashboards (e.g. [Mood Journal Sentiment Tracker](basic-project-03-mood-journal-sentiment.md)) | Paste-in / upload-and-get-a-result tools (e.g. [Medical Term Definer](basic-project-01-medical-term-definer.md), [Radiology Report Flagger](clinical-application-project-05-radiology-report-flagger.md)) |

Rule of thumb: if the project is "one function, one clear input, one clear output," reach for Gradio. If it needs multiple views, persistent state, or richer layout, reach for Streamlit.

[← Back to home](index.md)
