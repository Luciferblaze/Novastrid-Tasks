This is a simple python web application build using flask framework.
prerequsites:
python, pip

#install requirements
pip install -r requirements.txt

#run python app
python app.py

the application runs on port 8080.

#build docker image
docker build -t myapp:v1 .

#run the container.
docker run -itd -p 8080:8080 --name python-app myapp:v1
