### Build and run backend
```bash
docker build . -t backend && docker run -d -p 8080:8080 backend
```

### Build and run frontend
```bash
docker build . -t frontend && docker run -d -p 5000:5000 frontend
```