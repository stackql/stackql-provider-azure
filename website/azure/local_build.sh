#!/bin/bash
# Optimized local build script for large Docusaurus site

echo "Starting optimized local build process..."

# Clean previous build artifacts
rm -rf .docusaurus build

# Set maximum Node.js memory allocation (adjust based on your available RAM)
# For a 64GB machine, you can safely use 48-52GB for the build
export NODE_OPTIONS="--max-old-space-size=52428 --expose-gc"

# Optional: Temporarily disable source maps for faster builds
export GENERATE_SOURCEMAP=false

# Optional: Use faster JavaScript transformer
export DOCUSAURUS_USING_SWC=true 

# Run the build with optimizations
echo "Running Docusaurus build..."
yarn build --no-minify

echo "Build completed successfully!"