
# setting up by forcing to use this specific platform called 
# linux  with cpu architecture amd64 and node version 22-slim.
FROM --platform=linux/amd64 node:22-slim

# setting up the working directory to the root of the project.
# and switch to this directory.
WORKDIR /usr/src/app


# add the files to the working directory.
ADD . .

RUN npm ci

RUN npm run build

CMD ["node", "dist/main.js"]
