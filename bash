cat > next.config.mjs <<'EOF'
import createNextIntlPlugin from 'next-intl/plugin';

const withNextIntl = createNextIntlPlugin();

const nextConfig = {};

export default withNextIntl(nextConfig);
EOF

git add next.config.mjs
git commit -m "fix: temiz next.config.mjs"
git push
