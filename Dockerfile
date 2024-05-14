FROM node:22

# Set the Node environment to development to ensure all packages are installed
ENV NODE_ENV development

# Change our current working directory
# WORKDIR ./

# Copy over `package.json` and lock files to optimize the build process
COPY package.json package-lock.json ./
# Install Node modules
RUN npm install

# Copy over rest of the project files
COPY . .

# Perhaps we need to build it for production, but apparently is not needed to run dev script.
# RUN npm run build

# Expose port 3000 for the SvelteKit app and 24678 for Vite's HMR
EXPOSE 3000
# EXPOSE 8080
EXPOSE 24678

CMD ["npm", "run", "dev"]