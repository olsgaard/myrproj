FROM r-base:latest
COPY myapp.R myapp.R
CMD ["r", "myapp.R"]