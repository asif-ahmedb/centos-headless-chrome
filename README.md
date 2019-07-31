# centos-headless-chrome
Repository for resources for CentOS image and Headless chrome
Docker image with latest CentOS and Headless Chrome. Make sure karma.conf.js or karma.prod.conf.js is updated with below.

browsers: ['ChromeHeadless'],
                customLaunchers: {
                ChromeHeadless: {
                        base: 'Chrome',
                        flags: ['--no-sandbox',
                                '--headless',
                                '--remote-debugging-port=9222'] // with sandbox it fails under Docker
                }
        },


