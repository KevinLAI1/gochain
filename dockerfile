FROM golang
COPY app.go .
EXPOSE 8000
RUN go get -d -v \
github.com/lib/pq \
github.com/julienschmidt/httprouter
RUN go build -o a.out
CMD ./a.out