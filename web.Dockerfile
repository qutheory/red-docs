FROM python:alpine as build-stage

# Set up workspace and install mkdocs and dependencies.
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt && rm -rf $HOME/.cache/pip

RUN mkdocs build

FROM nginx:1.13.12-alpine as production-stage

COPY --from=build-stage /app/site/ /usr/share/nginx/html/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
