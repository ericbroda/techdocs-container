# SOURCE: https://github.com/backstage/backstage/issues/4123
FROM spotify/techdocs:latest

RUN apk --no-cache add nodejs npm chromium

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN npm install -g @mermaid-js/mermaid-cli@8.13.7

RUN pip install markdown-inline-mermaid==1.0.2