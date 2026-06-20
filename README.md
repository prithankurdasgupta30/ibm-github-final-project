# Product Catalog API

![Build Status](https://github.com/prithankurdasgupta30/devops-capstone-project/actions/workflows/workflow.yml/badge.svg)

## Project Overview

The Product Catalog API is a RESTful web service developed using Flask. It provides endpoints to create, read, update, delete, and list products. The project demonstrates DevOps best practices including automated testing, Continuous Integration using GitHub Actions, and Continuous Delivery.

## Features

- Create Products
- Retrieve Products
- Update Products
- Delete Products
- List Products
- Search Products
- Automated Unit Testing
- Continuous Integration with GitHub Actions

## Technology Stack

- Python 3
- Flask
- SQLAlchemy
- Pytest
- GitHub Actions
- Docker

## Project Structure

```
.
├── service/
├── tests/
├── migrations/
├── Dockerfile
├── requirements.txt
├── workflow.yml
└── README.md
```

## Installation

```bash
git clone https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPOSITORY_NAME.git

cd YOUR_REPOSITORY_NAME

python -m venv venv

source venv/bin/activate        # Linux/macOS

venv\Scripts\activate           # Windows

pip install -r requirements.txt
```

## Running the Application

```bash
flask run
```

## Running the Tests

```bash
pytest
```

## Continuous Integration

GitHub Actions automatically performs:

- Install dependencies
- Lint the code
- Execute unit tests
- Report build status

The build status badge at the top of this README reflects the latest workflow execution.

## Author

Prithankur Dasgupta
