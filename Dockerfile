# Use a smaller Python base image
FROM python:3.11-slim

# Install Poetry
RUN pip install poetry==1.7.0

# Create a non-root user and prepare the application directory
RUN useradd -m dbtuser && \
    mkdir /app && \
    chown dbtuser:dbtuser /app

# Switch to the non-root user
USER dbtuser

# Set the working directory in the container
WORKDIR /app

# Copy only necessary files for dependency installation
COPY --chown=dbtuser:dbtuser pyproject.toml poetry.lock /app/

# Install the project dependencies
RUN poetry install --only main --no-root

# Copy the rest of the project files
COPY --chown=dbtuser:dbtuser . /app

# Set the entrypoint for dbt commands
ENTRYPOINT ["poetry", "run", "dbt", "--profiles-dir ", ".", "--project-dir", "." "--target", "dev"]

# Default command (can be overridden)
CMD ["run"]