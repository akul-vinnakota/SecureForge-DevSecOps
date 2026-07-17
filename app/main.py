from fastapi import FastAPI

app = FastAPI(
    title="SecureForge API",
    description="DevSecOps cloud security pipeline API.",
    version="0.1.0",
)


@app.get("/")
def read_root() -> dict[str, str]:
    return {
        "message": "SecureForge API is running",
        "version": "0.1.0",
    }


@app.get("/health")
def health_check() -> dict[str, str]:
    return {
        "status": "healthy",
        "service": "secureforge-api",
    }
