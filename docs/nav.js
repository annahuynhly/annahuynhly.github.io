// Click-based dropdown toggle (works on both desktop and touch)
document.querySelectorAll('.nav-dropdown > a').forEach(function(toggle) {
  toggle.addEventListener('click', function(e) {
    e.preventDefault();
    var dropdown = this.parentElement;
    var isOpen = dropdown.classList.contains('open');
    document.querySelectorAll('.nav-dropdown').forEach(function(d) {
      d.classList.remove('open');
    });
    if (!isOpen) dropdown.classList.add('open');
  });
});

document.addEventListener('click', function(e) {
  if (!e.target.closest('.nav-dropdown')) {
    document.querySelectorAll('.nav-dropdown').forEach(function(d) {
      d.classList.remove('open');
    });
  }
});
