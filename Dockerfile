# Node.js 16 버전의 Alpine Linux 기반 이미지 사용
FROM node:16-alpine

# 작업 디렉토리 설정
WORKDIR /app

# package.json과 package-lock.json 파일 복사
COPY package.json package-lock.json ./

# 의존성 설치 (clean install)
RUN npm ci

# 소스 코드 복사
COPY index.js ./

# 컨테이너 실행 시 실행할 명령어
ENTRYPOINT [ "node", "index.js" ]
