# API Testing with KARATE (Pet Store)

This repository is a project for automated API tests using KARATE.

Quick overview:
- Contains example tests automated with Karate, using the `https://petstore.swagger.io/` website to add, read and edit a pet information via API.
- Project contain one feature for each test, information from previous tests could be used for the next one.

Run the tests (Maven)
1. Open PowerShell at the project root
2. Run:

```powershell
.\mvn test
```

Notes
- `pom.xml` contains all the necessary dependencies for karate to run the tests.
- In the `karate-config.js`, the baseUrl could be updated, and also the test environment

Contributing
- If you add tests, try to keep features generic and use similar structure so others can reuse them easily.

Enjoy working with the project.