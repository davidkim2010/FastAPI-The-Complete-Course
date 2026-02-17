#!/bin/bash

# IaaS Operations Service - Local Development Script
# This script runs the service locally using UV package manager

set -e

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo -e  "${SCRIPT_DIR}"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 IaaS Operations Service - Local Development${NC}"
echo -e "${BLUE}================================================${NC}\n"

# Change to source directory
cd "$(dirname "$0")/source"


# Check if .env file exists
if [ ! -f .env ]; then
    echo -e "${YELLOW}⚠️  .env file not found!${NC}"
    echo -e "${YELLOW}Please create a .env file with your AWS credentials${NC}"
    echo -e "${YELLOW}Example:${NC}"
    echo -e "  AWS_ACCESS_KEY_ID=your-key"
    echo -e "  AWS_SECRET_ACCESS_KEY=your-secret"
    echo -e "  AWS_REGION=us-east-1\n"
    exit 1
fi