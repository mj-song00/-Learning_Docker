#어떤 이미지를 생서할 것인가? 
FROM python:3.9

# 파일을 .경로로 옮기겠다
ADD requirements.txt .

#쉘에서 아래 커멘드를 실행해 환경을 만들겠다
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


ADD app.py .

ADD templates ./templates/

#커멘드 명령어 기본 실행
CMD ["python", "app.py"]