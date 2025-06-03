#!/bin/bash

# LiDAR Scanner PWA - GitHub Upload Script
# Gebruik dit script om de PWA naar GitHub te uploaden

echo "🚀 LiDAR Scanner PWA - GitHub Upload"
echo "===================================="

# Controleer of we in de juiste directory zijn
if [ ! -f "package.json" ]; then
    echo "❌ Fout: Voer dit script uit vanuit de lidar-scanner-pwa directory"
    exit 1
fi

# Vraag GitHub username
read -p "📝 Voer je GitHub username in: " GITHUB_USERNAME

if [ -z "$GITHUB_USERNAME" ]; then
    echo "❌ GitHub username is vereist"
    exit 1
fi

# Update remote URL
echo "🔗 Configureren van GitHub remote..."
git remote remove origin 2>/dev/null || true
git remote add origin "https://github.com/$GITHUB_USERNAME/lidar-scanner-pwa.git"

echo "✅ GitHub remote geconfigureerd: https://github.com/$GITHUB_USERNAME/lidar-scanner-pwa.git"
echo ""
echo "📋 Volgende stappen:"
echo "1. Ga naar https://github.com/new"
echo "2. Repository naam: lidar-scanner-pwa"
echo "3. Beschrijving: LiDAR Scanner PWA voor iPhone 15 Pro Max"
echo "4. Maak de repository aan (public of private)"
echo "5. Voer daarna uit: git push -u origin master"
echo ""
echo "🌐 Na upload is je PWA beschikbaar op:"
echo "   https://github.com/$GITHUB_USERNAME/lidar-scanner-pwa"
echo ""
echo "🚀 Voor automatische deployment via GitHub Pages:"
echo "   1. Ga naar Settings > Pages in je repository"
echo "   2. Selecteer 'GitHub Actions' als source"
echo "   3. De PWA wordt automatisch gedeployed naar:"
echo "      https://$GITHUB_USERNAME.github.io/lidar-scanner-pwa"

