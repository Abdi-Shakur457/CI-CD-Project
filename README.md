# CI/CD Project


## Overview  
This project demonstrates a simple CI/CD pipeline using Docker and GitHub Actions. The application is containerised and automatically built, tested, and pushed to Docker Hub whenever changes are pushed to the repository.

---

## Application  
The project consists of a Python application that runs inside a Docker container. It is orchestrated using Docker Compose alongside supporting services such as Redis and Nginx.

---

## CI Pipeline (Continuous Integration)  
The CI pipeline is triggered on every push to the repository and performs the following steps:

- Checks out the project code  
- Builds the Docker image  
- Starts the application services using Docker Compose  
- Runs automated tests using pytest inside the container  

This ensures that the application builds successfully and that basic functionality is verified before deployment.

---

## CD Pipeline (Continuous Deployment)  
After the CI steps pass successfully, the pipeline:

- Logs into Docker Hub using stored GitHub secrets  
- Tags the Docker image  
- Pushes the image to Docker Hub  

This allows the latest version of the application to be stored and reused for deployment.

---

## Technologies Used  

- Python  
- Docker & Docker Compose  
- GitHub Actions  
- Pytest  

---

## Screenshots 

<img width="959" height="475" alt="cicd ss" src="https://github.com/user-attachments/assets/0b1a2a3c-ccec-4cb3-b582-263aad570d78" />



<img width="577" height="101" alt="tests" src="https://github.com/user-attachments/assets/d3b66641-7cfc-4734-bd45-fcde46bb27a0" />



<img width="947" height="356" alt="docker-hub" src="https://github.com/user-attachments/assets/f4509562-c29f-4b1e-8b99-594cc50fbae1" />


## How to Run Locally  

1. Clone the repository  
2. Navigate to the project directory  
3. Run the following command:

```bash
docker compose up --build

---

## Screenshots 

<img width="959" height="475" alt="cicd ss" src="https://github.com/user-attachments/assets/0b1a2a3c-ccec-4cb3-b582-263aad570d78" />



<img width="577" height="101" alt="tests" src="https://github.com/user-attachments/assets/d3b66641-7cfc-4734-bd45-fcde46bb27a0" />



<img width="947" height="356" alt="docker-hub" src="https://github.com/user-attachments/assets/f4509562-c29f-4b1e-8b99-594cc50fbae1" />
