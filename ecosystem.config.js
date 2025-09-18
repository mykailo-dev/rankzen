module.exports = {
    apps: [{
      name: 'rankzen',
      script: '/var/www/rankzen/startup.sh',
      interpreter: 'bash',
      env: {
        PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD: '1',
        NODE_ENV: 'production',
        PATH: process.env.PATH
      }
    }]
  };