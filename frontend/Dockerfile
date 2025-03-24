FROM ghcr.io/cirruslabs/flutter:3.19.2 AS build

WORKDIR /app

COPY . .

RUN flutter pub get
RUN flutter build web --release


FROM python:3.11-slim

WORKDIR /app


COPY --from=build /app/build/web /app


EXPOSE 5000


CMD ["python3", "-m", "http.server", "5000", "--bind", "0.0.0.0"]
