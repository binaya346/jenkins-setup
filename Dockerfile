FROM jenkins/jenkins:lts

USER root

# 1. Install Docker CLI
# We need this to run 'docker build' commands inside the pipeline
RUN apt-get update && \
    apt-get install -y docker.io

# 2. (Optional) Install Maven manually ixf you prefer not to use the Global Tool Config
# RUN apt-get install -y maven

# 3. Clean up to reduce image size
RUN apt-get clean

# Note: In some lab setups, you might keep this as ROOT to avoid socket permission issues,
USER jenkins