## BUILD
# docker build -t frontend:0.1.0 .

# ## RUN
# # docker run -d frontend:0.1.0

# # docker run -it frontend:0.1.0 /bin/bash

# FROM node:16.19.0-buster

# LABEL email="leonardoguevara.dev@gmail.com" \
#       developer="Leonardo Guevara"

# COPY . /app

# WORKDIR /app

# RUN npm install

# RUN npm run build






## BUILD
# docker build -t frontend:0.1.0 .









# ## RUN
# # docker run -d -p 3000:3000 frontend:0.1.0

# # docker run -it frontend:0.1.0 /bin/bash

# FROM node:16.19.0-buster

# LABEL email="leonardoguevara.dev@gmail.com" \
#       developer="Leonardo Guevara"

# ENV BACKEND_BASE_URL=http://172.17.0.3:3800

# COPY . /app

# WORKDIR /app

# RUN npm install

# RUN npm run build

# RUN npm install -g serve

# CMD [ "serve", "-s", "build" ]





# FUNCIONA ----------------------------------------------------------------------

## BUILD 
# docker build -t frontend:0.1.0 .

## RUN
# docker run -d -p 5173:5173 frontend:0.1.0


# FROM node:16.19.0-buster as compilacion

# LABEL email="leonardoguevara.dev@gmail.com" \
#       developer="Leonardo Guevara"

# # ENV BACKEND_BASE_URL=http://172.17.0.2:3000

# ENV REACT_APP_BACKEND_BASE_URL=http://172.17.0.3:3000

# WORKDIR /app

# COPY package.json .
# RUN npm i

# COPY . .

# ## EXPOSE [Port you mentioned in the vite.config file]

# EXPOSE 5173

# # CMD ["npm", "run", "dev"]

# FROM nginx:1.22.1

# COPY --from-compilacion /app/dist

# FUNCIONA ----------------------------------------------------------------------


## PUSH FRONTEND-----------------------

# docker tag frontend:0.1.0-alpine leonardev7/budget-frontend:0.1.0-alpine

# docker push leonardev7/budget-frontend:0.1.0-alpine


## BUILD 
# docker build -t frontend:0.1.0-alpine -f nginx.Dockerfile .

## RUN
# docker run -d -p 8080:80 frontend:0.1.0-alpine


FROM node:16.19.0-buster as compilacion

LABEL email="leonardoguevara.dev@gmail.com" \
      developer="Leonardo Guevara"


ENV REACT_APP_BACKEND_BASE_URL=http://10.1.0.159:3000

WORKDIR /app

COPY package.json .
RUN npm i
COPY . .
RUN npm run build


## EXPOSE [Port you mentioned in the vite.config file]

# EXPOSE 5173

# CMD ["npm", "run", "dev"]

FROM nginx:1.22.1-alpine

# COPY nginx.conf /etc/nginx/nginx.conf

COPY --from=compilacion /app/dist /usr/share/nginx/html