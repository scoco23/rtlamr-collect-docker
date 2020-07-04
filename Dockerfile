# We specify the base image we need for our
# go application
FROM golang:1.12.0-alpine3.9
# We create an /app directory within our
# image that will hold our application source
# files
RUN mkdir /app
# We copy everything in the root directory
# into our /app directory
# We specify that we now wish to execute 
# any further commands inside our /app
# directory
WORKDIR /app
# we run go build to compile the binary
# executable of our Go program
RUN apk add git
# Download and compile the two programs
RUN go get github.com/bemasher/rtlamr
RUN go get github.com/bemasher/rtlamr-collect
# Copy the startup script
COPY start.sh /app
# Our start command which kicks off
# our newly created binary executables
CMD ["/app/start.sh"]
