# `just` コマンドを引数なしで実行すると、デフォルトで表示されます
@help:
    echo "Usage:"
    echo "  just lint        - Lint the OpenAPI specification file."
    echo "  just clean       - Clean up the Docker image."
    echo "  just help        - Show this help message."

# OpenAPI仕様ファイルをSpectralでリントします
lint:
    docker run --rm -it -v $(pwd):/tmp -w /tmp \
    stoplight/spectral lint openapi.yaml

clean:
    docker rmi stoplight/spectral || true
