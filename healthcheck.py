from fastapi import FastAPI
import platform, sys, shutil

app = FastAPI()

@app.get("/health")
def health():
    return {
        "status": "healthy",
        "python": sys.version,
        "node": shutil.which("node") is not None,
        "letta_code": shutil.which("letta-code") is not None,
        "platform": platform.system(),
    }
