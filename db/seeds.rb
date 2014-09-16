AdminUser.where(email: 'stevetong83@hotmail.com').first_or_create(password: 'password')
Page.where(page: 'about').first_or_create(title: 'About Us', content: 'Pretty As A Picture Scarves is locally owned and operated out of Greenville, SC.')
Page.where(page: 'contact').first_or_create(title: 'Contact Us', content: 'We are here when you need us. Please let us know how we can help.')
