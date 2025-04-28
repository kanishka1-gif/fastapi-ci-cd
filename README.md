# FastAPI CI/CD Demo
 # Simple FastAPI Application with Health Check
 
 This project is a basic FastAPI application that exposes a simple greeting and a health check endpoint. It's designed to demonstrate a minimal FastAPI setup, potentially for use with CI/CD pipelines like GitHub Actions.
 
 ## Getting Started
 
 ### Prerequisites
 
 * **Python 3.7+**
 * **pip** (Python package installer)
 
 ### Installation
 
 1.  **Clone the repository** (if you have the code in a repository):
     ```bash
     git clone <repository_url>
     cd <repository_directory>
     ```
 
 2.  **Install the required dependencies:**
     ```bash
     pip install fastapi uvicorn
     ```
     * `fastapi`: The web framework used to build the API.
     * `uvicorn`: An ASGI server to run the FastAPI application.
 
 ## Running the Application
 
 1.  Navigate to the directory containing your Python file (e.g., `main.py`).
 
 2.  Run the FastAPI application using Uvicorn:
     ```bash
     uvicorn main:app --reload
     ```
     * `main`: Replace with the name of your Python file (without the `.py` extension).
     * `app`: This refers to the FastAPI instance created in your code (`app = FastAPI()`).
     * `--reload`: Enables automatic reloading of the server when you make code changes, which is helpful during development.
 
 3.  Once the server starts, you can access the API endpoints through your web browser or using tools like `curl`. The default address is `http://127.0.0.1:8000`.
 
 ## API Endpoints
 
 * **`/` (GET)**: Returns a simple greeting.
     ```
     [http://127.0.0.1:8000/](http://127.0.0.1:8000/)
     ```
     **Response:**
     ```json
     {"message": "Hello, FastAPI with GitHub Actions!"}
     ```
 
 * **`/health` (GET)**: Provides a health check status for the application.
     ```
     [http://127.0.0.1:8000/health](http://127.0.0.1:8000/health)
     ```
     **Response:**
     ```json
     {"status": "healthy"}
     ```
 
 ## Usage
 
 You can interact with these endpoints using any HTTP client. For example, using `curl` in your terminal:
 
 ```bash
 curl [http://127.0.0.1:8000/](http://127.0.0.1:8000/)
 curl [http://127.0.0.1:8000/health](http://127.0.0.1:8000/health)
