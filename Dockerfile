FROM python:3.10

WORKDIR /Sassyv3

# Copy the requirements.txt file from the host to the /sakura directory in the Docker image
COPY requirements.txt /Sassyv3/

# Run the pip install command to install the Python dependencies
RUN pip install -r requirements.txt


COPY ..

CMD ["python3", "bot.py"]
