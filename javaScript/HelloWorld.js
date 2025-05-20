// Select elements from the page
const button = document.getElementById('magicButton');
const message = document.getElementById('message');

// Add click event listener to the button
button.addEventListener('click', () => {
  const now = new Date();
  message.textContent = `✨ You clicked the button at ${now.toLocaleTimeString()} ✨`;
  message.style.color = '#ffeb3b';
  message.style.textShadow = '0 0 10px #ffeb3b';
});
