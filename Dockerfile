FROM gw000/keras
COPY requirements.txt /usr/src/app/
RUN pip install -r /usr/src/app/requirements.txt
COPY app.py /usr/src/app/
COPY network.py /usr/src/app/network.py
COPY templates/results.html /usr/src/app/templates/
COPY templates/social.css /usr/src/app/templates/
COPY templates/test_post.html /usr/src/app/templates/
COPY templates/index.html /usr/src/app/templates/
CMD ["python", "/usr/src/app/app.py"]
