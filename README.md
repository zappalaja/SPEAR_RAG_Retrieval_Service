# SPEAR RAG Retrieval Service
A FastAPI-based method of connecting the SPEAR Climate Chatbot to a persistent ChromaDB for RAG.

This repository is designed to run in your Linux terminal. You can run this service as a background process if desired.

By defualt, this FastAPI service will be availble on localhost 8002 after running.

### How to Run

1. Edit **`rag_service.py`** and **`start_rag_api.py`** as needed with proper pathways (to your ChromaDB)
   
2. Make **`start_rag_api.py`** executable and run it like this in terminal:
   ```bash
   chmod +x start_rag_api.py
   ./start_rag_api.py
   ```
