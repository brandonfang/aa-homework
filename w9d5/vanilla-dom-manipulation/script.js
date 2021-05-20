document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  // adding SF places as list items

  const favoriteInput = document.getElementsByClassName('favorite-input');
  const input = favoriteInput.value;
  favoriteInput.value = "";

  const favoriteSubmitButton = document.getElementsByClassName('favorite-submit');
  const favoriteUl = document.getElementById('sf-places');

  favoriteSubmitButton.addEventListener('click', () => {
    
  });

  // adding new photos

  



});
