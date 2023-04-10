# Build
# docker build -t backend:0.1.0 .

# RUN
# docker run -d -p 3000:3000 `
# -e POSTGRES_USER=postgres `
# -e POSTGRES_PASSWORD=admin `
# -e DATABASE_URL=10.1.0.18:5432/budget `
# -e JWT_SECRET=thisismysecretjwtpasswordforlogincontroller `
# backend:0.1.0


# PUSH BACKEND

# docker tag backend:0.1.0 leonardev7/budget-backend:0.1.0

# docker push leonardev7/budget-backend:0.1.0


FROM node:16

ENV -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD=admin \
    # -e DATABASE_URL=172.17.0.2:5432/budget \
    -e DATABASE_URL=10.1.0.157:5432/postgres \
    -e SERVER_PORT=3000 \
    -e JWT_SECRET=thisismysecretjwtpasswordforlogincontroller

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY .  .

CMD ["npm", "start"]