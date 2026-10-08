APP_NAME="mini-RAG"
APP_VERSION="0.1"
OPENAI_API_KEY=""

FILE_ALLOWED_TYPES=["text/plain", "application/pdf"]
FILE_MAX_SIZE=10 

FILE_DEFAULT_CHUNK_SIZE=512000  # 512KB

POSTGRES_USERNAME="postgres"
POSTGRES_PASSWORD="postgres_password"
POSTGRES_HOST="pgvector"
POSTGRES_PORT=5432
POSTGRES_MAIN_DATABASE="minirag"



# ============================ LLM Config ===============================
GENERATION_BACKEND="OPENAI"   
EMBEDDING_BACKEND="COHERE"

OPENAI_API_KEY="key___"
GROQ_API_KEY="key___"
OPENAI_API_URL=""
COHERE_API_KEY="key___"

GENERATION_MODEL_ID_LITERAL=["gemma2:9b-instruct-q5_0" , "gpt-4o-mini","gpt-4o" , "openai/gpt-oss-20b"]
GENERATION_MODEL_ID="gemma2:9b-instruct-q5_0" 
EMBEDDING_MODEL_ID="embed-multilingual-v3.0"
EMBEDDING_MODEL_SIZE=1024

INPUT_DEFAULT_MAX_CHARACTERS=1024
GENERATION_DEFAULT_MAX_TOKENS=1000
GENERATION_DEFAULT_TEMPERATURE=0.1

# ============================ VectorDB Config ===============================
VECTOR_DB_BACKEND_LITERAL=["QDRANT","PGVECTOR"]
VECTOR_DB_BACKEND="PGVECTOR"
VECTOR_DB_PATH="qdrant_db"
VECTOR_DB_DISTANCE_METHOD="cosine"
VECTOR_DB_PGVEC_INDEX_THRESHOLD=300

# ============================ Template Configs ===============================
PRIMARY_LANG = "ar"  
DEFAULT_LANG="en"

# ========================= Celery Task Queue Config =========================
CELERY_BROKER_URL="amqp://minirag_user:minirag_rabbitmq_2222@rabbitmq:5672/minirag_vhost"
CELERY_RESULT_BACKEND="redis://:minirag_redis_2222@redis:6379/0"
CELERY_TASK_SERIALIZER="json"
CELERY_TASK_TIME_LIMIT=600
CELERY_TASK_ACKS_LATE=false
CELERY_WORKER_CONCURRENCY=2
CELERY_FLOWER_PASSWORD="minirag_flower_2222"
