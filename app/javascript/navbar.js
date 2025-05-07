// Toggle the dropdown menu visibility
document.addEventListener('click', function(event) {
    const userMenuButton = document.getElementById('user-menu-button');
    const userMenu = document.querySelector('[aria-labelledby="user-menu-button"]');
    
    if (userMenuButton && userMenu) {
      if (userMenuButton.contains(event.target)) {
        userMenu.classList.toggle('hidden');
      } else if (!userMenu.contains(event.target)) {
        userMenu.classList.add('hidden');
      }
    }
  });
  
  // Toggle the mobile menu
  document.addEventListener('click', function(event) {
    const mobileMenuButton = document.querySelector('[aria-controls="mobile-menu"]');
    const mobileMenu = document.getElementById('mobile-menu');
    
    if (mobileMenuButton && mobileMenu && mobileMenuButton.contains(event.target)) {
      const expanded = mobileMenuButton.getAttribute('aria-expanded') === 'true';
      mobileMenuButton.setAttribute('aria-expanded', !expanded);
      
      // Toggle the icons
      mobileMenuButton.querySelector('.block').classList.toggle('hidden');
      mobileMenuButton.querySelector('.hidden').classList.toggle('hidden');
      mobileMenuButton.querySelector('.hidden')?.classList.toggle('block');
      
      // Toggle the menu
      mobileMenu.classList.toggle('hidden');
    }
  });