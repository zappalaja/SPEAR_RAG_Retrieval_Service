#!/usr/bin/env bash
set -e

# --------------------------------------------------
# Initialize conda for non-interactive shell
# --------------------------------------------------
source "$HOME/miniconda3/etc/profile.d/conda.sh"

# Activate env
conda activate rag

# --------------------------------------------------
# RAG configuration
# --------------------------------------------------
export CHROMA_PERSIST_DIR="/home/zappalaj/Bot_Test/ingestion_rag/SPEAR-RAG-Ingestion/chroma_db"
export CHROMA_COLLECTION="nougat_merged"
export EMBED_MODEL="sentence-transformers/all-MiniLM-L6-v2"

# --------------------------------------------------
# Start FastAPI
# --------------------------------------------------
exec uvicorn rag_service:app --host 0.0.0.0 --port 8002

